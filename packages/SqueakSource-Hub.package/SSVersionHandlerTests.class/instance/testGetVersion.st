tests
testGetVersion
	| response member project version versionStream |
	
	member := SSMember login: 'Test1'.
	project := ((SSProject creator: member) id: 'Project1') license: 'MIT'.

	versionStream := self class createTestVersion: 'Foo-Bar' author: 'Test1'.
	version := SSVersion stream: versionStream author: member.

	SSRepository current
		addMember: member;
		addProject: project.
		
	project addVersion: version.
	response := self get: {member login . project id . version versionInfoName} asArray.
	self
		assert: (response response status = 200);
		assert: (response response contents = version asJson).