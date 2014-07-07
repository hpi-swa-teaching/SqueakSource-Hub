cookies
setCookieWithKey: key value: value expireIn: expire
	self requestContext response addCookie: ((WACookie key: key value: value)
			expireIn: expire;
			yourself)