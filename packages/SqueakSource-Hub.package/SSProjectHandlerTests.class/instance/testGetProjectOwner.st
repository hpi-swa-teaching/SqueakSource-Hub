tests
testGetProjectOwner
	| member project1 json |
	
	member := SSMember login: 'Test1'.
	project1 := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: 'MIT'.
	SSRepository current
		addMember: member;
		addProject: project1.
	
	json := self getJson: #('Test1' 'Project1').
	self
		assert: (json includesKey: 'contributors');
		assert: (json includesKey: 'sid');
		assert: (json includesKey: 'projectDescription');
		assert: (json includesKey: 'license');
		assert: (json includesKey: 'created');
		assert: (json includesKey: 'path');
		assert: (json includesKey: 'public');
		assert: (json includesKey: 'publicWrite');
		assert: (json includesKey: 'name');
		assert: (json includesKey: 'website');
		assert: (json includesKey: 'tagsString');
		assert: (json includesKey: 'commitHook');
		assert: ((json at: 'sid') = 'Project1');
		assert: ((json at: 'path') = '~Test1/Project1');
		assert: ((json at: 'name') = 'Project1').