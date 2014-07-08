as yet unclassified
putVersion: version ofProject: name owner: username
	<put>
	<path: '/{username}/{name}/main/{version}'>
	<produces: 'text/html'>
	
	self requestContext respond: [:response |
									response redirectTo: '/ss/', name, '/' version, '.mcz']