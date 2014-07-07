request-handling
getTimeline: username
	<get>
	<path: '/{username}'>
	<produces: 'text/json'>
 	
	| member timeline |
	
	member := SSRepository current memberAt: username ifAbsent: [^ self notFound].
	timeline := self generateTimeline: member.							
	
	^ timeline asJson 