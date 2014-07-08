request-handling
getCurrentMemberTeams
	<get>
	<path: '/teams'>
	<produces: 'text/json'>
	
	| member |
	member := self currentMember.
	member isAnonymous ifTrue: [^self respondInvalidLoginData].
	^ member groups asJson