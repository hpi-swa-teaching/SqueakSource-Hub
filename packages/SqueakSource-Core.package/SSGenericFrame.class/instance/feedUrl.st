accessing
feedUrl
	
	^ self application url
		addToPath: 'feed.rss';
		yourself