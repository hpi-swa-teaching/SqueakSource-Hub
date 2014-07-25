tests
testLogin
	| context member postFields |
	member := (SSMember login: 'Test1') password: 'Test'.
	SSRepository current addMember: member.
	
	context := self buildRequest: 'POST' url: #().
	postFields := Dictionary new
		at: 'username' put: member login;
		at: 'password' put: 'Test';
		yourself.
	context request setBody: (postFields asJson).

	[handler handle: context]
			on: WAResponseNotification
			do: [:notification | ].
	
	self
		assert: (context response status = 200);
		assert: (context response cookies anySatisfy: [:any | any key = 'login' and: [any value = member login]]);
		assert: (context response cookies anySatisfy: [:any | any key = 'password' and: [any value = member passwordHash asString]]).
