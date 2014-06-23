accessing-properties
propertyIncludes: aSymbol

	^self properties
		ifNil: [false]
		ifNotNil: [:prps | prps includesKey: aSymbol]