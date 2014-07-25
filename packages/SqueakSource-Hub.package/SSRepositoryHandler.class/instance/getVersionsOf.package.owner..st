request-handling
getVersionsOf: projectname package: package owner: username
	<get>
	<path: '/{username}/{projectname}/packages/{package}'>
	<produces: 'text/json'>
	
	|  versions project commits |
	commits := OrderedCollection new.
	project := SSRepository current projectAt: projectname ifAbsent: [self respondNotFound].
	versions := project versionsWithPackageName: package.
	^ versions asJson