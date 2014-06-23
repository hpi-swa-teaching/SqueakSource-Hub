testing
canEditSettings

	^ self isValidUser
		ifFalse: [false]
		ifTrue: [self user isSuperUser and:
			[self isHome]]