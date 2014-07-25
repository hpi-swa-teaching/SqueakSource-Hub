request-handling
addMember: username toTeam: id
	<get>
	<path: '/{id}/add-member/{username}'>
	<produces: 'text/plain'>
	
	| currentMember otherMember group |
	currentMember := self currentMemberOrRespondInvalid.
	group := SSRepository current groupAt: id ifAbsent: [self respondNotFound].
	otherMember := SSRepository current memberAt: username
											   ifAbsent: [^'Invalid user name.'].
	(group hasMember: currentMember) ifFalse: [^'User not part of the team'].
	(group hasMember: otherMember) ifTrue: [^'User already in the team'].
	group members add: otherMember.
	^'ok'