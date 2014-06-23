testing
canRegisterProject

	^ self isHome
	and: [self isValidUser
	and: [self repository allowRegisterProject
		or: [self session user superuser]]]