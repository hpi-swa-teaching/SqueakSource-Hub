request-handling
getCurrentMemberTeams
	<get>
	<path: '/teams'>
	<produces: 'text/json'>
	
	^ (self currentMember ifNil: [ self respondInvalidLoginData ]) groups asJson