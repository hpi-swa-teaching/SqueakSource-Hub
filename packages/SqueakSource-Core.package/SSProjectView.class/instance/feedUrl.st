actions
feedUrl

	<linkNamed: 'Project Feed' priority: 10 condition: #always>
	<icon: 'rss'>

	^self application url
		addToPath: self model id;
		addToPath: 'feed.rss';
		yourself