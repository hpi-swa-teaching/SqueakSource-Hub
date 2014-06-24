request-handling
getProjectsOfMember: login
	<get>
	<path: '/{login}'>
	<produces: 'text/json'>

	| member currentMember |
	member := SSRepository current memberAt: login
									       ifAbsent: [ self requestContext respond: [ :response |
											  								   	  response notFound ] ].
	currentMember := self currentMember ifNil: [ SSMember anonymousMember ].
	^ (member projects select: [ :each | each accessPolicy isMember: currentMember allowedTo: #read]) asJson