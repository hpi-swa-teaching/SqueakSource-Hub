request-handling
getRawListingOf: aString owner: aString2
	<get>
	<path: '/{aString2}/{aString}/main/?format=raw'>

	self requestContext respond: [:response |
			response redirectTo: self applicationUrl, '/', aString, '/?format=raw'.
			response status: WAResponse statusMovedPermanently]