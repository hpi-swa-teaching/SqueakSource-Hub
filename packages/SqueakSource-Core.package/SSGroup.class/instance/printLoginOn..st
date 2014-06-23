printing
printLoginOn: aStream
	self members do: [:each | aStream nextPutAll: each login]
		separatedBy: [aStream nextPutAll: ', '].
