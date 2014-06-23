printing
printOn: aStream
	aStream 
		nextPutAll: '* ';
		nextPutAll: (self fullname ifNil: [ '' ]);
		nextPutAll: ' ('.
	self printLoginOn: aStream.
	aStream nextPut: $)