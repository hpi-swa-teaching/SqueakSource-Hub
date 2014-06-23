accessing-groups
groups
	groups ifNil: [groups := GRPlatform current reducedConflictDictionary new].
	^groups values