accessing-defaults
defaultParticipants
		
	^ self repository
		ifNotNil: [:repo | repo members, repo groups]
		ifNil: [#()].