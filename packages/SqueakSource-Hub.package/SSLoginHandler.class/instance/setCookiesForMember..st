cookies
setCookiesForMember: aMember

	self setCookieWithKey: self loginCookieKey value: aMember login.
	self setCookieWithKey: self passwordCookieKey value: aMember passwordHash asString.