request-handling
getCurrentMemberTeams
	<get>
	<path: '/teams'>
	<produces: 'text/json'>
	
	^ (self currentMember isAnonymous ifTrue: [self respondInvalidLoginData]) groups asJson