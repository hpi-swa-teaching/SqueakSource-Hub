tests
testGetContributorsForProjectOwner
	| member member2 project1 json response |
	
	member := SSMember login: 'Test1'.
	member2 := (SSMember login: 'Test2') fullname: ''.
	project1 := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: 'MIT'.
	SSRepository current
		addMember: member;
		addMember: member2;
		addProject: project1.
	
	project1 developers add: member2.
	
	json := self getJson: #('Test1' 'Project1' 'contributors').
	self assert: (json size > 0).
	json := json at: 1.
	self
		assert: (json includesKey: 'location');
		assert: (json includesKey: 'website');
		assert: (json includesKey: 'admin');
		assert: (json includesKey: 'watching');
		assert: (json includesKey: 'fullName');
		assert: (json includesKey: 'path');
		assert: (json includesKey: 'email');
		assert: (json includesKey: 'name');
		assert: (json includesKey: 'created');
		assert: (json includesKey: 'mcUsername');
		assert: (json includesKey: 'username');
		assert: (json includesKey: 'sid');
		assert: ((json at: 'username') = 'Test2');
		assert: ((json at: 'path') = '~Test2').
		
	response := (self get: #('Test1' 'Project2' 'contributors')) response.
	
	self assert: (response status = 403).