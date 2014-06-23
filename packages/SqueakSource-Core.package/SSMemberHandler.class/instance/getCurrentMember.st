request-handling
getCurrentMember
	<get>
	<path: '/'>
	<produces: 'application/json'>

	| member |
	member := self currentMember.
	member ifNil: [ self respondInvalidLoginData ].
	^ member asJson