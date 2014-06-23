rendering
renderContentOn: rss
	rss title: self title.
	rss description: [
		rss withLineBreaks: self information ].
	rss link: self url.
	rss generator: self repository title.
	rss webMaster: self superUserEmail first.
	rss defaultDocumentation.
	super renderContentOn: rss