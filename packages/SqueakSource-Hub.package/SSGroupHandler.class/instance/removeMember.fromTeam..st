request-handling
removeMember: username fromTeam: id
	<put>
	<path: '/{id}/remove-member/{username}'>
	<produces: 'text/plain'>
	
	| currentMember otherMember group |
	currentMember := self currentMemberOrRespondInvalid.
	group := SSRepository current groupAt: id ifAbsent: [self respondNotFound].
	(currentMember login = username) ifTrue: [^'You cannot remove yourself from the team'].
	otherMember := SSRepository current memberAt: username
											   ifAbsent: [^'Invalid user name.'].
	(group hasMember: currentMember) ifFalse: [^'User not part of the team'].
	group members remove: otherMember ifAbsent: [^'User not in the team'].
	^'ok'