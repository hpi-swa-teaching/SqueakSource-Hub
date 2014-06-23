accessing-diff
diffs
	^self
		propertyAt: self class diffsProperty
		ifAbsentPut: [ GRPlatform current reducedConflictDictionary new ]
