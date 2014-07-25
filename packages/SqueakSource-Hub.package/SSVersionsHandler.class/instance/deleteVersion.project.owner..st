request-handling
deleteVersion: version project: projectId owner: owner
	<delete>
	<path: '/{owner}/{projectId}/versions/{version}'>
	<produces: 'text/plain'>
	
	| member project |
	member := self currentMemberOrRespondInvalid.
	project := SSRepository current projectAt: projectId ifAbsent: [self respondNotFound].
	(project accessPolicy isMember: member allowedTo: SSAccessPolicy write)
		ifFalse: [^ 'Delete forbidden'].
	(project versionAt: version, '.mcz') deleted: true.
	
	^ 'ok'