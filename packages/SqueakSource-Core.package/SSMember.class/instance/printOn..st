printing
printOn: aStream

	self isAnonymous
		ifTrue: [aStream nextPutAll: 'Anonymous']
		ifFalse: [
			fullname isEmpty 
				ifTrue: [aStream nextPutAll: '***'] 
				ifFalse: [
					aStream 
						nextPutAll: fullname; 
						space; nextPut: $(;
						nextPutAll: login;
						nextPut: $)]].
