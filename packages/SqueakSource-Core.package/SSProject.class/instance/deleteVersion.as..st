accessing-versions
deleteVersion: aVersion as: aMember
    (self isMember: aMember allowedTo: SSAccessPolicy admin)
        ifFalse: [ 
            ^ SSProjectAccessViolation
                project: self
                operation: 'delete version'
                member: aMember
                right: SSAccessPolicy admin ].
	self class versionRemovedActions do: [:actionBlock |
		actionBlock valueWithArguments: {self. aVersion. aVersion fileName. aVersion author. aMember}].
	^ aVersion