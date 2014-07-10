request-handling
getMCListingOf: aString owner: aString2
	<get>
	<path: '{aString2}/{aString}/main/?C=M;O=D'>

	self requestContext respond: [:response |
									response redirectTo: '/ss/', aString, '/?C=M;O%3DD'.
									response status: WAResponse statusMovedPermanently]