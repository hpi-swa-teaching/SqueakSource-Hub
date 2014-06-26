tests
testCount
	| response member |
	
	member := SSMember login: 'Test1'.
	SSRepository current
		addMember: member;
		addProject: ((SSProject creator: member) id: 'Project1');
		addProject: ((SSProject creator: member) id: 'Project2').
	
	response := self getJson: #('count').
	self assert: (response = 2).
	
	SSRepository current addProject: ((SSProject creator: member) id: 'Project3').
	response := self getJson: #('count').
	self assert: (response = 3).