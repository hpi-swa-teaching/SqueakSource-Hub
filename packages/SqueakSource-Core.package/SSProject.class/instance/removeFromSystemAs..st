actions
removeFromSystemAs: aMember
    (self isMember: aMember allowedTo: SSAccessPolicy admin)
        ifFalse: [ 
            ^ SSProjectAccessViolation
                project: self
                operation: 'remove project'
                member: aMember
                right: SSAccessPolicy admin ].
    self repository removeProject: self