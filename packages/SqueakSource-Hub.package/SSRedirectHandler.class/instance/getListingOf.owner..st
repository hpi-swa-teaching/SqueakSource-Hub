request-handling
getListingOf: aString owner: aString2
	<get>
	<path: '{aString2}/{aString}/main'>

	self requestContext respond: [:response |
			response redirectTo: self applicationUrl, '/', aString, '/'.
			response status: WAResponse statusMovedPermanently]