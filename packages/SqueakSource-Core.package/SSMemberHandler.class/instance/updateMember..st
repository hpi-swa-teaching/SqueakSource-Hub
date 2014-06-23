request-handling
updateMember: login
	<put>
	<path: '/{login}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>

	| input member |
	member := self currentMember.
	member ifNil: [ self respondInvalidLoginData ].
	input := JSJsonParser parse: self requestContext request rawBody.
	login = self currentMember login
		ifFalse: [^ 'Invalid user.'].