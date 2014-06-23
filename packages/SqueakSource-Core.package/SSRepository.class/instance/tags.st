accessing-tags
tags

	tags ifNil: [
		tags := GRPlatform current reducedConflictDictionary new.
		SSTag defaultInstances do: [ :each |
			self addTag: each]].
	^tags asSortedCollection