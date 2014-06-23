evaluation
value: anObject
	^anObject size
		perform: self comparator
		with: self boundary