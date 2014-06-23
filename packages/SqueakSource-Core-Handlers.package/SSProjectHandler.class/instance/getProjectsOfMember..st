as yet unclassified
getProjectsOfMember: login
	<get>
	<path: '/{login}'>
	<produces: 'application/json'>

	| member |
	member := SSRepository current memberAt: login
									    ifAbsent: [ self requestContext respond: [ :response |
											  									  response notFound ] ].
	^ member projects asJson