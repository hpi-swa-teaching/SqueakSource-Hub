request-handling
getProjectsOfMember: login
	<get>
	<path: '/{login}'>
	<produces: 'text/json'>

	| member |
	member := SSRepository current memberAt: login ifAbsent: [^ self notFound].
	^ (SSRepository current visibleProjectsTo: self select: [:each | each hasMember: member]) asJson