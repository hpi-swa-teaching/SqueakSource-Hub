tests
testTimelineProjects
	| json member project1 project2 |
	member := ((SSMember login: 'maxmuster') fullname: '').
	project1 := ((SSProject creator: member) id: 'Project1') license: 'MIT'.
	project2 := ((SSProject creator: member) id: 'Project2') license: 'MIT'.
	SSRepository current
		addMember: member;
		addProject: project1.
	(Delay forSeconds: 1) wait.
	SSRepository current
		addProject: project2. 
	
	json := self getJson: #('maxmuster').		
	self assert: (json size = 2).
	json := json at: 1.
	self
		assert: (json includesKey: 'type');
		assert: (json includesKey: 'projectId');
		assert: (json includesKey: 'title');
		assert: (json includesKey: 'project');
		assert: (json includesKey: 'description');
		assert: (json includesKey: 'email');
		assert: (json includesKey: 'created');
		assert: (json includesKey: 'sid');
		assert: (json includesKey: 'username');
		assert: (json includesKey: 'timestamp');
		assert: ((json at: 'projectId') = 'Project2');
		assert: ((json at: 'title') = 'created project');
		assert: ((json at: 'project') = 'maxmuster/Project2');
		assert: ((json at: 'type') = 'project').
	