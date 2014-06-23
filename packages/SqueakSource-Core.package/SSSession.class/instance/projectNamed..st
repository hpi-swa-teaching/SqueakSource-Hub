accessing
projectNamed: aString

	^self projectNamed: aString ifNotAllowed: [:project | nil ]