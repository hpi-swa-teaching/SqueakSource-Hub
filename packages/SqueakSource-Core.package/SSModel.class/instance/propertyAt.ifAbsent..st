accessing-properties
propertyAt: aSymbol ifAbsent: aBlock

	^ self properties 
		ifNil: aBlock
		ifNotNilDo: [:props | props at: aSymbol ifAbsent: aBlock]
	