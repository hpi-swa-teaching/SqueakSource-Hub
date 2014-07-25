tests
testGroupSize

	| json group testmember groupSizeBeforeAdding groupSizeAfterAdding |
	
	testmember := (SSMember login: 'maxmuster') fullname: ''.
	
	group := SSGroup new
		id: 'Test';
		fullname: 'TestGroup'.
	SSRepository current addGroup: group.
		
	json := self getJson: #('Test').
	groupSizeBeforeAdding := (json at: 'users') size.
		
	group members add: testmember.
	json := self getJson: #('Test').
	groupSizeAfterAdding := (json at: 'users') size.		
			
	self 
		assert: ( groupSizeBeforeAdding + 1 = groupSizeAfterAdding ).
		