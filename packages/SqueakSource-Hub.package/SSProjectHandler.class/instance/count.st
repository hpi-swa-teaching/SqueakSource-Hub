request-handling
count
	<get>
	<path: '/count'>
	<produces: 'text/json; charset=utf-8'>
	
	^ SSRepository current projectsCount asJson