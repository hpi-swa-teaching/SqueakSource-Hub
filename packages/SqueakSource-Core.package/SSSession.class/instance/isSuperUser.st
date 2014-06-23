testing
isSuperUser

	^ self isValidUser and: [ self user isSuperUser ]