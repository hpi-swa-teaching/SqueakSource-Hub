request-handling
updateTeam: id
	<put>
	<path: '/{id}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>
	
	| member group |
	member := self currentMemberOrRespondInvalid.
	group := SSRepository current groupAt: id ifAbsent: [self respondNotFound].
	(group hasMember: member) ifFalse: [^'User not part of the team'].
	group fromJson: self requestContext request rawBody.
	^'ok'