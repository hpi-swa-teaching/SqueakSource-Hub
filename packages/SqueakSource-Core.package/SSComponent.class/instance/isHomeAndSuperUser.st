testing
isHomeAndSuperUser

	^ self isHome 
	and: [ self isValidUser 
	and: [ self session isSuperUser]]
	