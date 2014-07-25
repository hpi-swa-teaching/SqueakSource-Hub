request-handling
getGroup: aString
	<get>
	<path: '/{aString}'>
	<produces: 'text/json'>
	
	^ (SSRepository current groupAt: aString ifAbsent: [^ self respondNotFound]) asJson