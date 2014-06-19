request-handling
updateMember: login
	<put>
	<path: '/{login}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>

	| input member |
	input := JSJsonParser parse: self requestContext request rawBody.
	self currentMember ifNil: [^ 'Invalid username or password'].
	login = self currentMember login
		ifFalse: [^ 'Invalid user.'].