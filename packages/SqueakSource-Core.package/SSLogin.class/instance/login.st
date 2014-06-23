actions
login
	self session login: (self model
		authenticateUser: self username
		password: self password).
	self session isValidUser
		ifTrue: [self answer]
		ifFalse: [loginFailed := true]