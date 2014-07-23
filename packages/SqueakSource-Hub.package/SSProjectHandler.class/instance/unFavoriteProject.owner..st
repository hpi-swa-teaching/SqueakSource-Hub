request-handling
unFavoriteProject: projectId owner: username
	<put>
	<path: '/{username}/{projectId}/stopWatching'>
	<produces: 'text/plain'>
	
	| project member |
	project := SSRepository current projectAt: projectId ifAbsent: [self notFound].
	member := self currentMemberOrRespondInvalid.
	(member favorites includes: project) ifFalse: [^'The project is not watched by the user'].
	member removeFavorite: project.
	^ 'ok'