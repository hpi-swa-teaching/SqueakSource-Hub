rendering
renderContentOn: html
	self tokens
		do: [ :each | html text: each ]
		separatedBy: [
			html anchor
				url: self url;
				with: self delimiter ]