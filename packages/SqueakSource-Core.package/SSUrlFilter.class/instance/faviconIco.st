request-handling
faviconIco
	<get>
	<path: 'favicon.ico'>
	self requestContext respond:  [ :response |
		response
			contentType: (WAMimeType main: 'image' sub: 'x-icon');
			binary;
			nextPutAll: self repository favicon ]