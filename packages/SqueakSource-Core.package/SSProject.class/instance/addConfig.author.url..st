accessing-configs
addConfig: aString author: aUser url: anUrl
	| config |
	(self isMember: aUser allowedTo: SSAccessPolicy write)
        ifFalse: [ 
            ^ SSProjectAccessViolation
                project: self
                operation: 'add configuration'
                member: aUser
                right: SSAccessPolicy write ].
	config := (MCMcmReader on: aString readStream fileName: anUrl asString) version.
	self class configurationAddedActions do: [:actionBlock|
		actionBlock valueWithArguments: {self. config. aUser}].
	^ config