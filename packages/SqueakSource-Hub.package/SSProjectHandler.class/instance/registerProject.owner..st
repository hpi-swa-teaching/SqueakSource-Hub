request-handling
registerProject: projectId owner: ownerLogin
	<post>
	<path: '/{ownerLogin}/{projectId}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>
	
	| member project |
	member := self currentMemberOrRespondInvalid.
	(SSRepository current isUniqueProjectId: projectId)
		ifFalse: [^'This project already exists.'].
	project := (SSProject creator: member) id: projectId.
	project fromJson: self requestContext request rawBody.
	SSRepository current addProject: project.
	^'ok'