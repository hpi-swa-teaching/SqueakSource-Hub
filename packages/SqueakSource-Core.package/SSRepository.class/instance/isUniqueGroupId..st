testing
isUniqueGroupId: aString
	^self groups 
		allSatisfy: [ :each | each id ~= aString ]