request-handling
getProjectsOfMember: login
	<get>
	<path: '/{login}'>
	<produces: 'text/json'>

	| member |
	member := SSRepository current memberAt: login ifAbsent: [^ self notFound].
	^ (SSRepository current visibleProjectsTo: self currentMember select: [:each | each hasMember: member]) asJson