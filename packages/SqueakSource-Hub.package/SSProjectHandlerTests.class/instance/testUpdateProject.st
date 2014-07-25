tests
testUpdateProject
	| context member project postFields |
	
	member := (SSMember login: 'Test1') password: 'Test'.
	project := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: #('MIT' 'http://www.opensource.org/licenses/mit-license.php').

	SSRepository current
		addMember: member;
		addProject: project.
	
	context := self buildRequest: 'PUT' url: {member login . project id} asArray.
	context request cookies
		add: (WARequestCookie key: 'login' value: member login);
		add: (WARequestCookie key: 'password' value: member passwordHash).
	
	postFields := Dictionary new
		at: 'license' put: 'BSD';
		at: 'public' put: true;
		at: 'publicWrite' put: true;
		at: 'projectDescription' put: 'Eine Beschreibung.';
		at: 'tagsString' put: 'TagEins, TagZwei';
		yourself.
	context request setBody: (postFields asJson).
	
	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
	
	self
		assert: (context response status = 200);
		assert: (project information = (postFields at: 'projectDescription'));
		assert: (project tagsString = (postFields at: 'tagsString'));
		assert: (project licenseJson = (postFields at: 'license'));
		assert: (project public);
		assert: (project publicWrite).