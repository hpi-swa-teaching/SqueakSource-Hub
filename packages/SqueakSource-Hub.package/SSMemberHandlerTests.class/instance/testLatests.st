tests
testLatests
	| json member |
	
	SSRepository current addMember: ((SSMember login: 'maxmuster') fullname: '').
	SSRepository current addMember: ((SSMember login: 'evamuster') fullname: '').
	json := self getJson: #('latests').		
	
	self assert: (json size = 2).
	
	member := json at: 1.
	self assert: (member includesKey: 'username');
		assert: (member at: 'username') = 'evamuster'.