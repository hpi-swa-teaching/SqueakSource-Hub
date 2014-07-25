tests
testGroups
	| json group |
	
	group := SSGroup new
		id: 'Test';
		fullname: 'TestGroup'.
	SSRepository current addGroup: group.

	json := self getJson: #('Test').		
			
	self assert: (json includesKey: 'sid');
		assert: (json includesKey: 'name');
		assert: (json includesKey: 'created');
		assert: (json includesKey: 'users');
		assert: (json includesKey: 'path');
		assert: (json at: 'sid') = 'Test';
		assert: (json at: 'name') = 'TestGroup'.
		