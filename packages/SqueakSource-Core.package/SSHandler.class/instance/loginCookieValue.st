as yet unclassified
loginCookieValue
	^ (self requestContext request cookieAt: self loginCookieKey) value