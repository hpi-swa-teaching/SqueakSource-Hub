as yet unclassified
redirectFrom: username project: projectName
	<get>
	<path: '/{username}/{projectName}/Main'>
	
	self requestContext respond: [ :response |
									response redirectTo: '/', projectName ]