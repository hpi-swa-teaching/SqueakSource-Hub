tests
testAddContributor
	| context member contributor project |
	
	member := (SSMember login: 'Test1') password: 'Test'.
	contributor := SSMember login: 'Contributor'.
	project := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: #('MIT' 'http://www.opensource.org/licenses/mit-license.php').

	SSRepository current
		addMember: member;
		addMember: contributor;
		addProject: project.
	
	context := self buildRequest: 'GET' url: {member login . project id . '/add-contributor/' . contributor login} asArray.
	context request cookies
		add: (WARequestCookie key: 'login' value: member login);
		add: (WARequestCookie key: 'password' value: member passwordHash).

	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
	
	self
		assert: (context response status = 200);
		assert: (project developers includes: contributor).