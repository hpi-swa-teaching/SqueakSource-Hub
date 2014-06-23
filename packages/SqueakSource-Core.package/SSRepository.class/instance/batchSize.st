accessing-settings
batchSize
	^self propertyAt: #batchSize
		ifAbsent: [20]