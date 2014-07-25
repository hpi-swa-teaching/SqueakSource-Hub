request-handling
diffText: version project: project owner: username
	<get>
	<path: '/{username}/{project}/main/{version}.diff'>

	self requestContext respond: [:response |
			response redirectTo: self class applicationUrl, '/', project, '/', version, '.diff'.
			response status: WAResponse statusMovedPermanently]