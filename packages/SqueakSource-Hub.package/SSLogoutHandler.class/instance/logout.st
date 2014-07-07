request-handling
logout
	<get>
	<path: ''>
	<produces: 'text/plain'>
	
	self setCookieWithKey: self loginCookieKey value: '' expireIn: 0 seconds.
	self setCookieWithKey: self passwordCookieKey value: '' expireIn: 0 seconds.

	^ 'OK'