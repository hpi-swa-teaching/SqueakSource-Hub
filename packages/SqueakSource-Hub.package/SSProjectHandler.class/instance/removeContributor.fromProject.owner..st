request-handling
removeContributor: contributorLogin fromProject: projectId owner: ownerName
	<put>
	<path: '/{ownerName}/{projectId}/remove-contributor/{contributorLogin}'>
	<produces: 'text/plain'>
	
	| currentMember contributor project |
	currentMember := self currentMemberOrRespondInvalid.
	project := SSRepository current projectAt: projectId ifAbsent: [self respondNotFound].
	contributor := SSRepository current memberAt: contributorLogin ifAbsent: ['Invalid user name.'].
	(project accessPolicy isMember: self currentMember allowedTo: SSAccessPolicy write)
		ifFalse: [^'Modification forbidden'].
	project developers remove: contributor ifAbsent: [].
	^'ok'