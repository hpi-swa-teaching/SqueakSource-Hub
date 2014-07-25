request-handling
getVersionNamesOf: projectname owner: owner
	<get>
	<path: '/{owner}/{projectname}/list'>
	<produces: 'text/json'>
	
	|  versions project |
	project := SSRepository current projectAt: projectname ifAbsent: [self respondNotFound].
	versions := (project versionsSortedByTimeAs: self currentMember) collect: [:each | each versionInfoName].
	^ versions asJson