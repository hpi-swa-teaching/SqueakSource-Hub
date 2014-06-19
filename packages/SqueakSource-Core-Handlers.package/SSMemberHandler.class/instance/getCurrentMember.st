request-handling
getCurrentMember
	<get>
	<path: '/'>
	<produces: 'application/json'>

	| member |
	member := self currentMember.
	member ifNil: [ self requestContext respond: [ : response |
													response forbidden.
													response nextPutAll: 'Invalid username or password' ] ].
	^ member asJson