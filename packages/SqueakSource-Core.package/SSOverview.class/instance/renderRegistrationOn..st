rendering
renderRegistrationOn: html
	
	self 
		renderCodeTabHeaderWith: [html text: 'Monticello Registration'] on: html;
		renderCodeTabContentWith: [
			html preformatted: [ html code: [
				html text: 'MCHttpRepository'; break.
				html text: '    location: '; text: self model fullDirectoryUrl asString printString; break.
				html text: '    user: '; text: (self session isValidUser
					ifTrue: [ self session user login ]
					ifFalse: [ String new ]) printString; break.
				html text: '    password: '; text: String new printString; break ]]]
		on: html.
