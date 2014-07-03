tests
testLatests
	| json member |
	member := ((SSMember login: 'maxmuster') fullname: '').
	SSRepository current
		addMember: member;
		addProject: (((SSProject creator: member) id: 'Project1') license: 'MIT');
		addProject: (((SSProject creator: member) id: 'Project2') license: 'MIT');
		addProject: (((SSProject creator: member) id: 'Project3') license: 'MIT').
	
	json := self getJson: #('latests').		
	
	self assert: (json size = 3).
	