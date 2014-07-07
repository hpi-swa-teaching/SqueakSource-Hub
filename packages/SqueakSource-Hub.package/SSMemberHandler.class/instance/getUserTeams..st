request-handling
getUserTeams: username
	<get>
	<path: '/{username}/teams'>
	<produces: 'text/json'>
	
	^ (SSRepository current memberAt: username ifAbsent: [self notFound]) groups asJson