request-handling
count
	<get>
	<path: '/count'>
	<produces: 'text/json'>
	
	^ SSRepository current membersCount asJson