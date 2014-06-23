rendering
renderCloseButtonOn: html
	html anchor
		callback: [self answer];
		with: 'close'