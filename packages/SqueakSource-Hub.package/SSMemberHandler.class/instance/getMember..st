request-handling
getMember: login
	<get>
	<path: '/{login}'>
	<produces: 'text/json'>

	^ (SSRepository current memberAt: login ifAbsent: [self notFound]) asJson