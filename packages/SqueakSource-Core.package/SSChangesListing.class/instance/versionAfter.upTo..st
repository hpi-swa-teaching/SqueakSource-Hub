private
versionAfter: oldInfo upTo: newInfoX
    | newInfo i newPkg newVer nextInfo nextPkg nextVer oldVer |
    expand
        ifFalse: [ ^ newInfoX ].	"look up version with ancestors"
    newInfo := (self project versionAt: newInfoX name , '.mcz' ifAbsent: [ ^ nil ] as: self user) versionInfo.	"direct parent"
    (newInfo ancestors includes: oldInfo)
        ifTrue: [ ^ newInfo ].	"find next version according to timestamp"
    sortedInfos
        ifNil: [ sortedInfos := (self project versionsSortedByTimeAs: self user) collect: [ :each | each versionInfo ] ].
    newPkg := (newInfo name copyUpToLast: $-) asLowercase.
    oldVer := oldInfo name numericSuffix.
    newVer := newInfo name numericSuffix.
    i := sortedInfos indexOf: oldInfo.
    [ i < sortedInfos size ]
        whileTrue: [ 
            i := i + 1.
            nextInfo := sortedInfos at: i.
            nextPkg := (nextInfo name copyUpToLast: $-) asLowercase.
            nextPkg = newPkg
                ifTrue: [ 
                    nextVer := nextInfo name numericSuffix.
                    nextVer > oldVer
                        ifTrue: [ 
                            ^ nextVer < newVer
                                ifTrue: [ nextInfo ]
                                ifFalse: [ newInfo ] ] ] ].
    ^ newInfo