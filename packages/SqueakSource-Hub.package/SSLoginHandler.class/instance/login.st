request-handling
login
	<post>
	<path: ''>
	<consumes: '*/json'>
	<produces: 'text/plain'>
	
	| input member |
	input := JSJsonParser parse: self requestContext request rawBody.
	member := SSRepository current memberAt: (input at: 'username' ifAbsent: [ nil ])
										ifAbsent: [ self respondInvalidLoginData ].
	(member isPasswordValid: (input at: 'password' ifAbsent: [ nil ]))
		ifTrue: [ self setCookiesForMember: member.
				^ 'OK' ].

	^ self notFound