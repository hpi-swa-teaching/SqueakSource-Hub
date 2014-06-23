accessing-tags
hasTagNamed: aString
	^self tags anySatisfy: [ :each |
		each name = aString ]