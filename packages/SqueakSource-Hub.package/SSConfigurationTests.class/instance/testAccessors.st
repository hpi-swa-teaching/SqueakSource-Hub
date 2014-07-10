tests
testAccessors
	| member project |
	member := SSMember login: 'test'.
	project := (SSProject creator: member) id: 'test'.
	member
		favorites: nil;
		jsonKey: nil;
		location: nil;
		mcUsername: nil;
		name: nil;
		path: nil;
		website: nil;
		timestamp: nil.
	
	self 
		assert: (member favorites class = OrderedCollection);
		assert: (member jsonKey = member login);
		assert: (member location = '');
		assert: (member mcUsername = '');
		assert: (member name = member login);
		assert: (member path = ('~', member login));
		assert: (member website = '');
		assert: (member timestamp class = TimeStamp);
		assert: (project jsonKey = project id).