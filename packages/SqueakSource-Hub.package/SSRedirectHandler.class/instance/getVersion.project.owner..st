request-handling
getVersion: version project: name owner: username
	<get>
	<path: '/{username}/{name}/main/{version}.mcz'>

	self requestContext respond: [:response |
			response redirectTo: self applicationUrl, '/', name, '/', version, '.mcz'.
			response status: WAResponse statusMovedPermanently]