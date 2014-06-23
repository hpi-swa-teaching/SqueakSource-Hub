accessing-settings
introText
	^self propertyAt:  #introText
		ifAbsent: [String new]