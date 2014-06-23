accessing-properties
propertyAt: aSymbol ifAbsentPut: aBlock

	^(self propertyAt: aSymbol) ifNil: [
		self propertyAt: aSymbol put: aBlock value].
