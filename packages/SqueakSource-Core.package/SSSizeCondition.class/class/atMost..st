instance-creation
atMost: anInteger
	^self new
		comparator: #<=;
		boundary: anInteger;
		yourself