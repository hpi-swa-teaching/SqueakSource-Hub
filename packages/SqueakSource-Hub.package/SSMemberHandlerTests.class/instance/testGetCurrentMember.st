tests
testGetCurrentMember
	| response |
	
	SSRepository current addMember: ((SSMember login: 'maxmuster') fullname: '').
	response := (self get: #('')) response.		
	self assert: (response contents = 'Invalid username or password').
	