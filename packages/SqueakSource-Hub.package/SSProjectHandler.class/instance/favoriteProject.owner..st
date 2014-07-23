request-handling
favoriteProject: projectId owner: username
	<put>
	<path: '/{username}/{projectId}/watch'>
	<produces: 'text/plain'>
	
	| project member |
	Transcript show: 'this'.
	Transcript show: projectId.
	project := SSRepository current projectAt: projectId ifAbsent: [self notFound].
	member := self currentMemberOrRespondInvalid.
	(member favorites includes: project) ifTrue: [^'Project already followed by user'].
	member addFavorite: project.
	^ 'ok'