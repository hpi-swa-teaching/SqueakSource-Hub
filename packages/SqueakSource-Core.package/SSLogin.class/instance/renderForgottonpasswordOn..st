rendering
renderForgottonpasswordOn: html
	html break.
	self loginFailed
		ifTrue: [ html strong: [
			self renderForgottonpasswordLinkOn: html ] ]
		ifFalse: [ self renderForgottonpasswordLinkOn: html ]