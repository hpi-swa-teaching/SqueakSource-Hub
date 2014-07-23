request-handling
getWatchersOfProject: projectId owner: username
	<get>
	<path: '/{username}/{projectId}/watchers'>
	<produces: 'text/json'>
	
	| project |
	project := SSRepository current projectAt: projectId ifAbsent: [self notFound].
	^ (SSRepository current membersSelect: [:each | each favorites includes: project]) asJson