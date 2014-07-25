request-handling
getWatchersOfProject: projectId owner: username
	<get>
	<path: '/{username}/{projectId}/watchers'>
	<produces: 'text/json'>
	
	| project |
	project := SSRepository current projectAt: projectId ifAbsent: [self respondNotFound].
	^ (SSRepository current membersSelect: [:each | each favorites includes: project]) asJson