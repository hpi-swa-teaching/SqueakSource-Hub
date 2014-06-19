request-handling
getMember: login
	<get>
	<path: '/{login}'>
	<produces: 'text/json'>

	| repository member |
	repository := SSRepository current.
	member := repository memberAt: login.
	member ifNil: [^ '{}'].

	^ member asJson