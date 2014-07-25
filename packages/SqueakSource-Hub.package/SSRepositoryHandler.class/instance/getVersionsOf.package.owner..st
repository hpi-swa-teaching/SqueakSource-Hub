request-handling
getVersionsOf: projectname package: package owner: username
	<get>
	<path: '/{username}/{projectname}/packages/{package}'>
	<produces: 'text/json'>
	
	| versions project |
	versions := OrderedCollection new.
	project := SSRepository current projectAt: projectname ifAbsent: [self respondNotFound].
	(project versionsWithPackageName: package) do: [:each | versions add: each].
	^ versions asJson