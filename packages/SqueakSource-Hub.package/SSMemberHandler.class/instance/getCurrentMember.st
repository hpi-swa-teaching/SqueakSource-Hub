request-handling
getCurrentMember
	<get>
	<path: '/'>
	<produces: 'application/json'>

	| member |
	member := self currentMember.
	member isAnonymous ifTrue: [^ self respondInvalidLoginData].
	^ member asJson