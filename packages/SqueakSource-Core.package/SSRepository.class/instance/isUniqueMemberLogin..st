testing
isUniqueMemberLogin: aString
	^self members 
		allSatisfy: [ :each | each login ~= aString ]