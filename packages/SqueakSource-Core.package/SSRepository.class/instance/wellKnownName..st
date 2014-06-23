accessing-settings
wellKnownName: aString

	^ self propertyAt:  #wellKnownName
		put: (aString ifNil: [String new] ifNotNil: [aString])