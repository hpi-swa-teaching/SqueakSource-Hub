printing-email
printObject: anObject labelled: aString on: aStream
	aStream space; space; space; nextPutAll: aString.
	(20 - aString size) timesRepeat: [aStream space].
	aStream nextPutAll: (anObject printStringLimitedTo: 100).
	aStream cr.