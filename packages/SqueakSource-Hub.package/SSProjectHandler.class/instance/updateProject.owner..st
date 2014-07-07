request-handling
updateProject: identifier owner: username
	<put>
	<path: '/{username}/{identifier}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>
	
	| project |
	project := SSRepository current projectAt: identifier ifAbsent: [ ^ self notFound ].
	(project admins includes: self currentMemberOrRespondInvalid) ifFalse: [ ^ 'Invalid user' ].
	project readFrom: self requestContext request rawBody.
	^ 'ok'