tests
testGetCurrentMemberTeams
	| response |
	
	SSRepository current addMember: ((SSMember login: 'maxmuster') fullname: '').
	response := (self get: #('teams')) response.		
	self assert: (response contents = 'Invalid username or password').
	