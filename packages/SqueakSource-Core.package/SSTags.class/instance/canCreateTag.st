testing
canCreateTag

	^ self session isValidUser
		and: [self repository allowCreateTag
			or: [self user isSuperUser]]