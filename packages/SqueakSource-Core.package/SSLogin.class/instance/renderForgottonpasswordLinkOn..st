rendering
renderForgottonpasswordLinkOn: html
	html anchor
		callback: [ self sendPassword ];
		with: 'I forgot my password'