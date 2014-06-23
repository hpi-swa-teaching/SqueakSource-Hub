accessing-magritte-specific
magritteModelAccessIn: aDescriptions

	^ (aDescriptions accessor isKindOf: MASelectorAccessor)
			ifTrue: [" normal selectors "
				aDescriptions accessor selector]
			ifFalse: [" dictionary accessor"
				(aDescriptions accessor isKindOf: MAChainAccessor)
				and: [(aDescriptions accessor accessor isKindOf: MADictionaryAccessor)
				and: [aDescriptions accessor accessor key]]]