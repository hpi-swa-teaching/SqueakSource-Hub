tests
testRegisterProject
	| context member project newProject postFields |
	
	member := (SSMember login: 'Test1') password: 'Test'.
	project := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: #('MIT' 'http://www.opensource.org/licenses/mit-license.php').

	SSRepository current addMember: member.
	
	context := self buildRequest: 'POST' url: {member login . project id} asArray.
	context request cookies
		add: (WARequestCookie key: 'login' value: member login);
		add: (WARequestCookie key: 'password' value: member passwordHash).
	
	postFields := Dictionary new
		at: 'license' put: 'BSD';
		at: 'publicWrite' put: true;
		at: 'projectDescription' put: 'Eine Beschreibung.';
		at: 'tagsString' put: 'TagEins, TagZwei';
		yourself.
	context request setBody: (postFields asJson).
	
	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
	
	newProject := SSRepository current projectAt: project id.
	self
		assert: (context response status = 200);
		assert: (newProject information = (postFields at: 'projectDescription'));
		assert: (newProject tagsString = (postFields at: 'tagsString'));
		assert: (newProject licenseJson = (postFields at: 'license'));
		assert: (newProject publicWrite).