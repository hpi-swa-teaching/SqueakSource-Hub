request-handling
getWatchedProjectsByMember: login
	<get>
	<path: '/{login}/watching'>
	<produces: 'text/json'>
	
	| member |
	member := SSRepository current memberAt: login ifAbsent: [^ self notFound].
	^ (member favorites collect: [:each | each creator login, '/', each id]) asJson