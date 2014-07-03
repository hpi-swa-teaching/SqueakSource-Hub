request-handling
latest
	<get>
	<path: '/latests'>
	<produces: 'text/json; charset=utf-8'>
	
	| sortedProjects |
	sortedProjects := SSRepository current projects asSortedCollection sortBlock: [ :a :b | a timestamp > b timestamp].
	(sortedProjects size < 15)
		ifTrue: [ ^ sortedProjects asJson ]
		ifFalse: [ ^ (sortedProjects copyFrom: 1 to: 15) asJson ]