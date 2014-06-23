evaluation
value: admins

	| currentUser |
	currentUser := self session user.
	^ currentUser isSuperUser
		or: [	admins anySatisfy: [:each |
			each isGroup
				ifTrue: [each hasMember: currentUser]
				ifFalse: [each = currentUser]]]