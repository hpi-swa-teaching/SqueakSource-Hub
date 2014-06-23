request-handling
getMember: login
	<get>
	<path: '/{login}'>
	<produces: 'text/json'>

	| repository member |
	repository := SSRepository current.
	member := repository memberAt: login.
	member ifNil: [
		self requestContext respond: [ :response |
										response notFound ] ].

	^ member asJson