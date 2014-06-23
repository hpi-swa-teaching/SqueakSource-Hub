testing
isValidUser

	^ self user notNil and: [self user notAnonymous]