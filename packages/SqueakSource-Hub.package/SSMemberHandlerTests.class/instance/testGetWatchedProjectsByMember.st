tests
testGetWatchedProjectsByMember
	| member project1 project2 json |
	
	member := SSMember login: 'Test1'.
	project1 := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: 'MIT'.
	(Delay forSeconds: 1) wait.
	project2 := (SSProject creator: member)
						id: 'Project2';
						title: 'Muster-Projekt';
						license: 'MIT'.
	member favorites add: project1.

	SSRepository current
		addMember: member;
		addProject: project1;
		addProject: project2.
	
	json := self getJson: #('Test1' 'watching').
	self assert: (json size = 1).
	json := json at: 1.
	self assert: (json = (project1 creator login, '/', project1 title)).