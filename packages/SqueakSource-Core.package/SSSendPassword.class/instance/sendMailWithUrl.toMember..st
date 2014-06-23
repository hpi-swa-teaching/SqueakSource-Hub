actions
sendMailWithUrl: aUrl toMember: aMember

	| messageText email message |
	messageText := self class messageTemplate 
		format: { aMember fullname .  aUrl . self rootUrl}.
	email := self repository superUserEmail first.
	message := WAEmailMessage
		from: email
		toAll: (Array with: aMember fullEmailAddress with: email)
		subject: self repository title ,' -- Forgot Password'.
	message setStringBody: messageText wrap: false.
	message send.