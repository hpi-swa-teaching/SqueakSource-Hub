request-handling
updateMember: login
	<put>
	<path: '/{login}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>

	| member |
	self currentMember isAnonymous ifTrue: [ self respondInvalidLoginData ].
	member := SSRepository current memberAt: login ifAbsent: [ ^ 'Invalid user.' ].
	(self currentMember =  member) ifFalse: [ ^ self respondInvalidLoginData ].
	member fromJson: self requestContext request rawBody.
	^ 'ok'