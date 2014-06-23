private
projectNamed: aString

	^self projectNamed: aString ifNotAllowed: [ nil ]