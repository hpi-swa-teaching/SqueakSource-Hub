accessing
feedValidationUrl

	^ WAUrl new
		host: 'validator.w3.org';
		addToPath: 'feed/check.cgi';
		addField: 'url' value: self feedUrl;
		yourself