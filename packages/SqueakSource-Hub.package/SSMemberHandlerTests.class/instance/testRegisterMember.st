tests
testRegisterMember
	| response postFields json |
	
	postFields := Dictionary new.
	postFields at: 'email' put: 'asd@asd.de';
		at: 'password' put: 'pass';
	 	at: 'username' put: 'maxmuster'.
	
	response := (self post: #('maxmuster') fields: postFields) response.		
	json := self getJson: #('maxmuster').		
	
	self assert: (json includesKey: 'username');
		assert: (json includesKey: 'email');
		assert: ((json at: 'username') = 'maxmuster').