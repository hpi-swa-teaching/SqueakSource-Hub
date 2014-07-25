tests
testRemoveGroupMember

	| context group member groupMember |
	
	member := (SSMember login: 'Test1') password: 'Test'.
	groupMember := SSMember login: 'GroupMember'.
	group := SSGroup new
		id: 'Test';
		fullname: 'TestGroup'.
	group members
		add: member;
		add: groupMember.

	SSRepository current
		addMember: member;
		addMember: groupMember;
		addGroup: group.

	context := self buildRequest: 'PUT' url: {group id . 'remove-member' . groupMember login} asArray.
	context request cookies
		add: (WARequestCookie key: 'login' value: member login);
		add: (WARequestCookie key: 'password' value: member passwordHash).

	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
			
	self
		assert: (context response status =  200);
		assert: ((group members includes: groupMember) not).