tests
testGetListingOfOwner
	| response |
	
	response := (self get: #('testV' 'testP' 'main')) response.
	self
		assert: (response status = 301);
		assert: (response headers includesKey: 'Location');
		assert: ((response headers at: 'Location') =
				(self handlerClass applicationUrl, '/testP/') ).