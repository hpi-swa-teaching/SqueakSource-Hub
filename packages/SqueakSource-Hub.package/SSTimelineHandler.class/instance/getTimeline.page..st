request-handling
getTimeline: username page: aString
	<get>
	<path: '/{username}/{aString}'>
	<produces: 'text/json'>

	| page member timeline |
	page := aString asInteger ifNil: [self badRequest].
	member := SSRepository current memberAt: username ifAbsent: [
		self requestContext respond: [ :response |
										response notFound ] ].
	timeline := self generateTimeline: member.	
	
	timeline copyFrom: ((page - 1) * self pageSize + 1) 
			to: (page * self pageSize min: timeline size).
	
	^ timeline asJson 