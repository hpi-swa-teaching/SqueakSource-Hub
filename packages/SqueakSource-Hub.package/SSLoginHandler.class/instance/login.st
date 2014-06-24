request-handling
login
	<post>
	<consumes: '*/json'>
	
	| input member |
	input := JSJsonParser parse: self requestContext request rawBody.
	member := SSRepository current memberAt: (input at: 'login' ifAbsent: [ ^ nil asJson ]) ifAbsent: [ ^ nil ].
	(member isPasswordValid: (input at: 'password' ifAbsent: [ ^ nil ]))
		ifTrue: [ self setCookieWithKey: self loginCookieKey value: member login.
				self setCookieWithKey: self passwordCookieKey value: member passwordHash asString.
				^ 'OK' ].

	^ self notFound