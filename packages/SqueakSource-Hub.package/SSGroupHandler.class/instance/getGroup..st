request-handling
getGroup: aString
	<get>
	<path: '/{aString}'>
	<produces: 'text/json'>
	
	^ (SSRepository current groupAt: aString ifAbsent: [^ self notFound]) asJson