accessing
blessings
	^ blessings ifNil: [blessings := GRPlatform current reducedConflictDictionary new]