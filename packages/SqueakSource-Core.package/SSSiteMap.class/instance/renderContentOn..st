rendering
renderContentOn: xml

	(xml tag: 'urlset')
		attributeAt: 'xmlns' put: 'http://www.sitemaps.org/schemas/sitemap/0.9';
		attributeAt: 'xmlns:xsi' put: 'http://www.w3.org/2001/XMLSchema-instance';
		attributeAt: 'xsi:schemaLocation' put: 'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd';
		with: [
			WACurrentRequestContext value 
				push: (SSSession new login: self user)
				while: [self renderRepository: self repository on: xml]].