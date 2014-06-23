accessing-versions
moveVersion: aVersion to: aProject author: anAuthor as: aMember
    self
        copyVersion: aVersion
        to: aProject
        author: anAuthor
        as: aMember.
    (self isMember: aMember allowedTo: SSAccessPolicy move)
        ifFalse: [ 
            ^ SSProjectAccessViolation
                project: self
                operation: 'move version'
                member: aMember
                right: SSAccessPolicy move ].
	self class versionRemovedActions do: [:actionBlock |
		actionBlock valueWithArguments: {self. aVersion. aVersion fileName. aVersion author. aMember}].
	^ aVersion