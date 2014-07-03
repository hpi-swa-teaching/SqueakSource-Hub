request-handling
latest
	<get>
	<path: '/latests'>
	<produces: 'text/json; charset=utf-8'>
	
	| sortedMembers |
	sortedMembers := SSRepository current members asSortedCollection sortBlock: [ :a :b | a timestamp > b timestamp].
	(sortedMembers size < 15)
		ifTrue: [ ^ sortedMembers asJson ]
		ifFalse: [ ^ (sortedMembers first: 15) asJson ]
	