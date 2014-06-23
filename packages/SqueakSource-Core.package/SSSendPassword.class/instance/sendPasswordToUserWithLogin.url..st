actions
sendPasswordToUserWithLogin: aLogin url: url

	| member |
	member := self model memberAt: aLogin.
	member ifNil: [
		self informOnlyAdmin: 'You specified an unknown account. Please contact the administrator.'.
		self answer].
	member email ifNil: [
		self informOnlyAdmin: 'No e-mail address specified for this account. Please contact the administrator.'.
		self answer].
	member isSuperUser ifTrue: [
		self inform: 'Superusers shoud never forget their password.'.
		self answer].
	[ self sendMailWithUrl: 'http://', (self repository requestContext request headers at: 'host'), url greaseString toMember: member ]
		on: Error
		do: [ :error | ^self informOnlyAdmin: error description, '. Please contact the administrator.'; answer].
	self inform: 'An e-mail has been successfully sent to you.'.
	self answer