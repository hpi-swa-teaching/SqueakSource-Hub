authentication
authenticateUser: aUsername password: aPassword
	" return the authenticated user object, or the anonymous one, if something failed "
	
	| user anon |
	anon := SSMember anonymousMember.
	user := self 
		memberAt: aUsername 
		ifAbsent: [^ anon].
	aPassword isEmpty ifTrue: [^ anon].
	^(user isPasswordValid: aPassword)
		ifTrue: [user]
		ifFalse: [anon].