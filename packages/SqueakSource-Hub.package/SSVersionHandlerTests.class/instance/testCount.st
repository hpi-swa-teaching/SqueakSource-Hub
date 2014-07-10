tests
testCount
	| response member project |
	
	member := SSMember login: 'Test1'.
	project := ((SSProject creator: member) id: 'Project1') license: 'MIT'.

	SSRepository current
		addMember: member;
		addProject: project.
		
	response := self getJson: #('count').
	self assert: (response = 0).
