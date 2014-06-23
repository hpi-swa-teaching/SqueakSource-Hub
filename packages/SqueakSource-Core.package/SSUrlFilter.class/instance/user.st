private
user
	| request |
	request := self requestContext request.
	^ self repository 
		authenticateUser: request user
		password: request password