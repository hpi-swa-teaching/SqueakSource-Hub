request-handling
robotsTxt
	<get>
	<path: 'robots.txt'>
	self requestContext respond: [ :response |
		
		response
			contentType: WAMimeType textPlain;
			nextPutAll: 'SiteMap: '; 
			nextPutAll: (SSGzippedSiteMap available
				ifTrue: [(self rootUrl addToPath: 'sitemap.xml.gz') greaseString]
				ifFalse: [(self rootUrl addToPath: 'sitemap.xml') greaseString]);
			nextPutAll: String crlf;
			nextPutAll: 'User-agent: *'; nextPutAll: String crlf;
			nextPutAll: 'Disallow: /_s'; nextPutAll: String crlf;
			nextPutAll: 'Disallow: /_k'; nextPutAll: String crlf ]