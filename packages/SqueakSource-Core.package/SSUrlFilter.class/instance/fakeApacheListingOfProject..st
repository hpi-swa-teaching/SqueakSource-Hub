request-handling
fakeApacheListingOfProject: projectName
	<get>
	<path: '/{projectName}/?C=M;O%3DD'>
	self listingOfProject: projectName