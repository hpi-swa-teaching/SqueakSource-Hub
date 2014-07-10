tests
testGetUserTeams
	| json group member |
	member := (SSMember login: 'maxmuster') fullname: ''.
	group := SSGroup new id: 'TestTeam'.
	group members add: member.
	SSRepository current 
		addMember: member;
		addGroup: group.
		
	json := self getJson: #('maxmuster' 'teams').		
	self assert: (json size = 1).
	json := json at: 1.
	self assert: (json includesKey: 'sid');
		assert: (json includesKey: 'created');
		assert: (json includesKey: 'users');
		assert: (json includesKey: 'path');
		assert: ((json at: 'path') = '~TestTeam');
		assert: ((json at: 'sid') = 'TestTeam').
	json := json at: 'users'.
	self 
		assert: (json size = 1);
		assert: ((json at: 1) = 'maxmuster').