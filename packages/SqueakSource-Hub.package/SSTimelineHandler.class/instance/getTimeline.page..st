request-handling
getTimeline: username page: aString
	<get>
	<path: '/{username}/{aString}'>
	<produces: 'text/json'>

	| page member timeline |
	page := aString asInteger ifNil: [^ self respondBadRequest].
	
	member := SSRepository current memberAt: username 
		ifAbsent: [^ self respondNotFound].
	timeline := self generateTimeline: member.	
	
	timeline := timeline copyFrom: ((page - 1) * self pageSize + 1) 
			to: (page * self pageSize min: timeline size).
	^ timeline asJson 