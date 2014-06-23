instance creation
string: aString delimiter: aDelimiter url: aUrl
	| splitIndex tokens |
	splitIndex := aString findString: aDelimiter.
	tokens := Array
		with: (aString copyFrom: 1 to: splitIndex - 1)
		with: (aString copyFrom: splitIndex + aDelimiter size to: aString size).
	^self new
		tokens: tokens;
		delimiter: aDelimiter;
		url: aUrl;
		yourself