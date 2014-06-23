accessing-settings
introText: aString

	^ self propertyAt:  #introText
		put: (aString ifNil: [String new] ifNotNil: [aString])