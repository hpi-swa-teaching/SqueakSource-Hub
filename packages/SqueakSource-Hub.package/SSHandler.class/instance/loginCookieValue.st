cookies
loginCookieValue
	^ (self requestContext request cookieAt: self loginCookieKey) value