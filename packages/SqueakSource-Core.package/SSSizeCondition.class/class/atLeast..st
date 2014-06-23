instance-creation
atLeast: anInteger
	^self new
		comparator: #>=;
		boundary: anInteger;
		yourself