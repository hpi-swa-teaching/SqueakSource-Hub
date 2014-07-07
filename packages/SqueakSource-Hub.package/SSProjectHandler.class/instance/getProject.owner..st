request-handling
getProject: identifier owner: username
	<get>
	<path: '/{username}/{identifier}'>
	<produces: 'text/json'>

	| project |
	project := SSRepository current projectAt: identifier ifAbsent: [ self respondForbidden ].
	^ project asJson