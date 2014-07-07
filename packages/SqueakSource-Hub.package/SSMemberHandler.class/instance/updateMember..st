request-handling
updateMember: login
	<put>
	<path: '/{login}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>

	| member |
	member := self currentMember isAnonymous ifTrue: [^self respondInvalidLoginData].
	member fromJson: self requestContext request rawBody.
	^ 'ok'