request-handling
registerMember: login
	<post>
	<path: '/{login}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>
	
	| member |
	member := (SSMember login: login)
					fullname: login;
					fromJson: self requestContext request rawBody;
					yourself.
	SSRepository current addMember: member.
	self setCookieWithKey: self loginCookieKey value: member login.
	self setCookieWithKey: self passwordCookieKey value: member passwordHash asString.
	^ 'ok'