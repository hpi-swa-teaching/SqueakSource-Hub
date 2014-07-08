request-handling
getGroupMembers: aString
	<get>
	<path: '/{aString}/members'>
	<produces: 'text/json'>
	
	^ (SSRepository current groupAt: aString ifAbsent: [^ self notFound]) members asJson