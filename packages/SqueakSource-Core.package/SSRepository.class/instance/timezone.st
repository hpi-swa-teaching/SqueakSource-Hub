accessing-settings
timezone
	^self propertyAt: #timezone
		ifAbsent: [ '+0100' ]