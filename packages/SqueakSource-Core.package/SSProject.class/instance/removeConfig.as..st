accessing-configs
removeConfig: configName as: aMember

    | config |
    (self isMember: aMember allowedTo: SSAccessPolicy admin)
        ifFalse: [ 
            ^ SSProjectAccessViolation
                project: self
                operation: 'delete configuration'
                member: aMember
                right: SSAccessPolicy admin ].
	
	config := self configs at: configName ifAbsent: [^ nil].
	
	self class configurationRemovedActions do: [:actionBlock|
		actionBlock valueWithArguments: {self. configName. aMember}].
	
	^ config