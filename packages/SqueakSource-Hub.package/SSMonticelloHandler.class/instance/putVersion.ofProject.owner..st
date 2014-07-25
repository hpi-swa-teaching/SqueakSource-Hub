request-handling
putVersion: version ofProject: name owner: username
	<put>
	<path: '/{username}/{name}/main/{version}'>
	
	self requestContext respond: [:response |
			response redirectTo: self class applicationUrl, '/', name, '/', version, '.mcz'.
			response status: WAResponse statusMovedPermanently]