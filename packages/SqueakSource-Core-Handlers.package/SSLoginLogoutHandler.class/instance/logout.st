request-handling
logout
	<get>
	<path: '/logout'>
	
	self setCookieWithKey: self loginCookieKey value: '' expireIn: 0 seconds.
	self setCookieWithKey: self passwordCookieKey value: '' expireIn: 0 seconds.

	^ nil asJson