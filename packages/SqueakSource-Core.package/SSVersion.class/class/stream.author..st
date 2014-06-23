instance creation
stream: aStream author: aMember
	^self basicNew
		initializeFromStream: aStream author: aMember;
		yourself