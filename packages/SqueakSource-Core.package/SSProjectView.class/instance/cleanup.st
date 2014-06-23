actions
cleanup
    <actionNamed: 'Cleanup Versions' priority: 65 condition: #canCleanup>
    <icon: 'truck'>
    | parent target merged latestVersions latestInfos latestInfo ok |
    parent := self project parentProject ifNil: [ ^ self ].
    target := self project defaultMoveTarget ifNil: [ ^ self ].
    (self
        confirm:
            'Looking for versions from ' , self project title , ' that were merged into ' , parent title
                , ' might take a while. To search, click yes once and wait.')
        ifFalse: [ ^ self ].
    latestVersions := Dictionary new.
    (parent latestVersionsAs: self user) do: [ :pv | latestVersions at: pv packageName put: pv ].
    latestInfos := Dictionary new.
    merged := Dictionary new.
    self project
        versionsDo: [ :my | 
            latestVersions
                at: my packageName
                ifPresent: [ :latestVer | 
                    latestInfo := latestInfos at: my packageName ifAbsentPut: [ (latestVer reader: parent) info ].
                    (latestInfo hasAncestor: my versionInfo alreadySeen: Set new)
                        ifTrue: [ (merged at: latestInfo name ifAbsentPut: [ SortedCollection new ]) add: my ] ] ]
        as: self user.
    merged
        ifEmpty: [ ^ self inform: 'No versions found in ' , self project title , ' that were merged to ' , parent title , '.' ].
    ok := self
        confirm:
            (String
                streamContents: [ :s | 
                    s nextPutAll: 'These versions are already merged into ' , parent title , ':<ul>'.
                    merged keysSortedSafely
                        do: [ :parentVersion | 
                            s nextPutAll: '<li>'.
                            (merged at: parentVersion)
                                do: [ :myVersion | s nextPutAll: myVersion versionInfo name ]
                                separatedBy: [ s nextPutAll: ', ' ] ].
                    s nextPutAll: '</ul><br>Okay to move these from ' , self project title , ' to ' , target title , '?' ]).
    ok
        ifTrue: [ 
            merged
                do: [ :versions | 
                    versions
                        do: [ :each | 
                            target addVersion: (self repository storage loadMonticello: each from: self project) author: each author as: self user.
                            self project deleteVersion: each as: self user ] ].
            self session save.
            self
                inform:
                    'Moved ' , merged size asString , ' versions from ' , self project title , ' to ' , target title , '.' ].
    self answer