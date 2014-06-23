rendering
renderContentOn: html
	html text: self configuration fileName.
	html heading level3 with: [
		html withLineBreaks: self configuration summary ].
	html text: 'Really delete ', self configuration fileName, '? There is no backup!'.
	self renderNextOn: html