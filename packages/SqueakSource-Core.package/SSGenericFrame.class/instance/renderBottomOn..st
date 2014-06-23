rendering
renderBottomOn: html

	html div
		style: 'width: 100%';
		with: [
			html span
				style: 'float: left';
				with: [
					html anchor url: 'http://validator.w3.org/check/referer'; with: 'XHTML'.
					html text: ' | '.
					html anchor url: 'http://jigsaw.w3.org/css-validator/check/referer'; with: 'CSS'.
					html text: ' | '.
					html anchor url: self feedValidationUrl; with: 'RSS' ].
			html span style: 'float: right'; with: Date today].
			html break style: 'clear: both'.
