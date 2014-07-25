tests
testDeleteVersion
	| context member project version versionStream |
	
	member := (SSMember login: 'Test1') password: 'Test'.
	project := ((SSProject creator: member) id: 'Project1') license: 'MIT'.

	versionStream := self class createTestVersion: 'Foo-Bar' author: 'Test1'.
	version := SSVersion stream: versionStream author: member.

	SSRepository current
		addMember: member;
		addProject: project.
		
	project addVersion: version.

	context := self buildRequest: 'DELETE' url: {member login . project id . 'versions' . version versionInfoName} asArray.
	context request cookies
		add: (WARequestCookie key: 'login' value: member login);
		add: (WARequestCookie key: 'password' value: member passwordHash).
		
	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
	
	self
		assert: (context response status = 200);
		assert: (context response contents = 'ok');
		assert: (project versionsSorted includes: version) not.