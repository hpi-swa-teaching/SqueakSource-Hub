tests
testCount
	| response |

	SSRepository current
		addMember: (SSMember login: 'Test1');
		addMember: (SSMember login: 'Test2').	
	response := self getJson: #('count').
	self assert: (response = 2).
	
	SSRepository current addMember: (SSMember login: 'Test3').
	response := self getJson: #('count').
	self assert: (response = 3).