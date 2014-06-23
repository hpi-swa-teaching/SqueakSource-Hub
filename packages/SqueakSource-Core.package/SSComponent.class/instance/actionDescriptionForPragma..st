actions-accessing
actionDescriptionForPragma: aPragma

	| iconPragma |
	iconPragma := aPragma method pragmas 
		detect: [:p| p keyword == #icon:] 
		ifNone: [].
	^ iconPragma 
		ifNil: [aPragma argumentAt: 1]
		ifNotNil: [(iconPragma argumentAt: 1) -> (aPragma argumentAt: 1)]