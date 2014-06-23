request-handling
listingOfProject: projectName
	<get>
	<path: '/{projectName}'>
	self requestContext request url slash
		ifFalse: [self requestContext redirectTo: (self rootUrl addToPath: projectName; slash: true)].
	self projectNamed: projectName do: [ :project |
		(self isAllowed: SSAccessPolicy read in: project)
			ifFalse: [ self authResponseFor: project ]
			ifTrue: [ self requestContext respond: [:response |
				response
					contentType: project directoryListingContentType;
					nextPutAll: (project directoryListingUsingZips: self isGooglebot)]]].