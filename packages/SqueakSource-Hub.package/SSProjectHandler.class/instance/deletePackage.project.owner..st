request-handling
deletePackage: packageName project: projectId owner: username
	<delete>
	<path: '/{username}/{projectId}/packages/{packageName}'>
	<produces: 'text/plain'>
	
	| member project |
	member := self currentMemberOrRespondInvalid.
	project := SSRepository current projectAt: projectId ifAbsent: [self respondNotFound].
	(project accessPolicy isMember: member allowedTo: SSAccessPolicy write)
		ifFalse: [^'Delete forbidden'].
	(project versionsWithPackageName: packageName) do: [:each | each deleted: true].
	
	^'ok'