request-handling
getCurrentMember
	<get>
	<path: '/'>
	<produces: 'application/json'>

	| member |
	member := self currentMemberOrRespondInvalid.
	^ member asJson