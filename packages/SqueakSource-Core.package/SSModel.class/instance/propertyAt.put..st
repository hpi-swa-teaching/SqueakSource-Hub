accessing-properties
propertyAt: aSymbol put: aValue

	^aValue
		ifNil: [
			self properties ifNotNil: [
				self properties removeKey: aSymbol ifAbsent: [].
				self properties ifEmpty: [properties := nil]]]
		ifNotNil: [
			self properties ifNil: [properties := GRPlatform current reducedConflictDictionary new].
			self properties at: aSymbol put: aValue]