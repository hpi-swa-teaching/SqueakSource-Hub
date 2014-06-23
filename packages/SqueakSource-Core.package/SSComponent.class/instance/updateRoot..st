updating
updateRoot: aHtmlRoot

	self requestContext response
		headerAt: 'X-UA-Compatible' put: 'IE=edge,chrome=1'