tests
testGetVersionProjectOwner
	| response |
	
	response := (self get: #('testV' 'testP' 'main' 'testV.mcz')) response.
	self
		assert: (response status = 302);
		assert: (response headers includesKey: 'Location');
		assert: ((response headers at: 'Location') = '/ss/testP/testV.mcz' ).