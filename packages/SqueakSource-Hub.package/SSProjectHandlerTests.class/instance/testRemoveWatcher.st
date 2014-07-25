tests
testRemoveWatcher
	| context member watcher project |
	
	member := SSMember login: 'Test1'.
	watcher := (SSMember login: 'Watcher') password: 'favorite'.
	project := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: #('MIT' 'http://www.opensource.org/licenses/mit-license.php').
	watcher addFavorite: project.

	SSRepository current
		addMember: member;
		addMember: watcher;
		addProject: project.
	
	context := self buildRequest: 'PUT' url: {member login . project id . '/stopWatching'} asArray.
	context request cookies
		add: (WARequestCookie key: 'login' value: watcher login);
		add: (WARequestCookie key: 'password' value: watcher passwordHash).

	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
	
	self
		assert: (context response status = 200);
		assert: ((watcher favorites includes: project) not).