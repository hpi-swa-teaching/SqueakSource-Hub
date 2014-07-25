tests
testGetVersionProjectOwner
	| response |
	
	response := (self get: #('testV' 'testP' 'main' 'testV.mcz')) response.
	self
		assert: (response status = 301);
		assert: (response headers includesKey: 'Location');
		assert: ((response headers at: 'Location') =
				(self handlerClass applicationUrl, '/testP/testV.mcz') ).