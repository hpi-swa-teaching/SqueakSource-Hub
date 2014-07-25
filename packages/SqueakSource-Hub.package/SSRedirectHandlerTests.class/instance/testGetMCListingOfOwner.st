tests
testGetMCListingOfOwner
	| response |
	
	response := (self get: #('testV' 'testP' 'main' '?C=M;O=D')) response.
	self
		assert: (response status = 301);
		assert: (response headers includesKey: 'Location');
		assert: ((response headers at: 'Location') =
				(self handlerClass applicationUrl, '/testP/?C=M;O%3DD') ).