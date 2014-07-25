tests
testGroupMembersAdd

	| json group testmember |
	
	testmember := (SSMember login: 'maxmuster') fullname: ''.
	group := SSGroup new
		id: 'Test';
		fullname: 'TestGroup'.
		
	group members add: testmember.
	SSRepository current addGroup: group.

	json := self getJson: #('Test').		
			
	self assert: ( ( (json at: 'users') select: [:each | each='maxmuster'] ) isEmptyOrNil not ).
		