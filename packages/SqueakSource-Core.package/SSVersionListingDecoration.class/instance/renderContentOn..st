rendering
renderContentOn: html
	html text: 'Really ', self actionName greaseString, ' of package "', self version packageName, '"?'.
	html unorderedList: [
		self versions do: [ :each |
			html listItem: each fileName ] ].
	self renderNextOn: html