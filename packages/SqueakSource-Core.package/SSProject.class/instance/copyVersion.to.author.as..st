accessing-versions
copyVersion: aVersion to: aProject author: anAuthor as: aMember
    (self isMember: aMember allowedTo: SSAccessPolicy read for: aVersion)
        ifFalse: [ 
            ^ SSVersionAccessViolation
                project: self
                version: aVersion
                operation: 'copy version'
                member: aMember
                right: SSAccessPolicy read ].
    aProject addVersion: (SSRepository storage loadMonticello: aVersion from: self) author: anAuthor as: aMember.
    ^ aVersion