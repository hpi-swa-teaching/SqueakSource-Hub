converting
toString: anObject
	^anObject ifNotNil: [:o | o greaseString ] ifNil: ['']