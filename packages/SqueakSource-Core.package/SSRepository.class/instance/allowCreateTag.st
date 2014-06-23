accessing-settings
allowCreateTag
	^self propertyAt: #allowCreateTag
		ifAbsent: [false]