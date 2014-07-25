request-handling
getPackagesOf: projectname owner: username
	<get>
	<path: '/{username}/{projectname}/packages'>
	<produces: 'text/json'>

	|  project packages |
	packages := Set new.
	project := SSRepository current projectAt: projectname ifAbsent: [self respondNotFound].
	project versionsDo: [:version | packages add: version packageName] as: self currentMember.
	^ packages asJson