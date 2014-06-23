printing-email
sendFailFor: anError
	| message |
	message := WAEmailMessage
		from: self from
		toAll: self to
		subject: (self subjectFor: anError).
	message body: (self bodyFor: anError).
	message send