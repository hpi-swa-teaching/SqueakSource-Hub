accessing-versions
versionAt: aFileName ifAbsent: aBlock as: aMember
    | version |
    version := self versionAt: aFileName ifAbsent: aBlock.
    (self isMember: aMember allowedTo: SSAccessPolicy read for: version)
        ifFalse: [ 
            ^ SSVersionAccessViolation
                project: self
                version: version
                operation: 'version at'
                member: aMember
                right: SSAccessPolicy read ].
    ^ version