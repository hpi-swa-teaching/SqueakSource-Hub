accessing
user
	user ifNil: [user := self repository 
		authenticateUser: self requestContext request user
		password: self requestContext request password].
	^ user