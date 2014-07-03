as yet unclassified
getVersion: version project: name owner: username
	<get>
	<path: '/{username}/{name}/main/{version}.mcz'>

	self requestContext respond: [ :response |
									response redirectTo: '/ss/', name, '/', version, '.mcz' ]