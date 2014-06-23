accessing-versions
latestVersionsAs: aMember
    | latest |
    latest := Dictionary new.
    self
        versionsDo: [ :each | 
            | last |
            last := -1.
            latest at: each packageName ifPresent: [ :v | last := v packageVersion ].
            each packageVersion > last
                ifTrue: [ latest at: each packageName put: each ] ]
        as: aMember.
    ^ latest asSortedCollection