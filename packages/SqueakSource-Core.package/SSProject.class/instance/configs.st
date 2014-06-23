accessing-configs
configs
	^configs ifNil: [configs := GRPlatform current reducedConflictDictionary new].
