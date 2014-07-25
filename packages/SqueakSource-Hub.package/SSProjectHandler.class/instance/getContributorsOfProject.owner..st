request-handling
getContributorsOfProject: name owner: username
	<get>
	<path: '/{username}/{name}/contributors'>
	<produces: 'text/json'>
	
	| project |
	project := SSRepository current projectAt: name ifAbsent: [self respondForbidden].
	^ project developers asJson