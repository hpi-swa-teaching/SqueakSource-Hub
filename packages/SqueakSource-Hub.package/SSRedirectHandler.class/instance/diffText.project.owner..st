as yet unclassified
diffText: version project: project owner: username
	<get>
	<path: '/{username}/{project}/main/{version}.diff'>

	self requestContext respond: [ :response |
									response redirectTo: '/ss/', project, '/', version, '.diff' ]