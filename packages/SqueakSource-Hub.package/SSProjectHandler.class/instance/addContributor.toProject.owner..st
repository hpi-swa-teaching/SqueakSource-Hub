request-handling
addContributor: contributorLogin toProject: projectId owner: username
	<get>
	<path: '/{username}/{projectId}/add-contributor/{contributorLogin}'>
	<produces: 'text/plain'>
	
	| currentMember contributor project |
	currentMember := self currentMemberOrRespondInvalid.
	project := SSRepository current projectAt: projectId ifAbsent: [self respondNotFound].
	contributor := SSRepository current memberAt: contributorLogin ifAbsent: [^'Invalid user name.'].
	currentMember = contributor ifTrue: [^'Cannot add yourself as a contributor.'].
	(project accessPolicy isMember: self currentMember allowedTo: SSAccessPolicy write)
		ifFalse: [^'Modification forbidden'].
	project accessPolicy addDeveloper: contributor.
	^'ok'