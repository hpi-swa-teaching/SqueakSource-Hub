accessing-versions
versionsDo: aBlock as: aMember
    "shouldn't throw access violation, but shouldn't list any versions at all, if no access allowed"

    (self isMember: aMember allowedTo: SSAccessPolicy read)
        ifFalse: [ ^ self ].
    versions
        do: [ :each | 
            each isDeleted
                ifFalse: [ 
                    (self isMember: aMember allowedTo: SSAccessPolicy read for: each)
                        ifTrue: [ aBlock value: each ] ] ]