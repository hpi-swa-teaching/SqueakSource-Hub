request-handling
updateMember: login
	<put>
	<path: '/{login}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>

	| member |
	self currentMember ifNil: [ self respondInvalidLoginData ].
	member := SSRepository current memberAt: login ifAbsent: [ ^ 'Invalid user.' ].
	member fromJson: self requestContext request rawBody.
	^ 'ok'