request-handling
getCurrentMemberTeams
	<get>
	<path: '/teams'>
	<produces: 'text/json'>
	
	| member |
	member := self currentMemberOrRespondInvalid.
	^ member groups asJson