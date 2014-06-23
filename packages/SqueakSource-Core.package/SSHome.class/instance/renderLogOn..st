rendering
renderLogOn: html
	| log |
	log := self session storage getLogEntries: 200.
	log ifNil: [^self].

	html heading level2; with: 'Log'.
	html text: '(showing last 200 Entries, up to 1k '.
	html anchor
		callback: [
			self requestContext respond: [:response | 
				response
					contentType: WAMimeType textPlain;
					nextPutAll: (self session storage getLogEntries: 1000) ] ];
		with: 'here'.
	html text: ')'.
	html preformatted: log.
