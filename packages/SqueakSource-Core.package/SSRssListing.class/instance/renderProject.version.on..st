rendering
renderProject: aProject version: aVersionOrFeedEntry on: rss
	| author |
	rss item: [
		rss title: aVersionOrFeedEntry title.
		rss link: aProject fullHomepageUrl.
		rss description: [
			rss withLineBreaks: aVersionOrFeedEntry message ].
		
		rss publicationDate: (RRRfc822DateTime
			dateAndTime: aVersionOrFeedEntry timestamp
			timeZoneString: self timezone) printString.
		
		"author"
		author := aVersionOrFeedEntry author.
		(author notNil and: [ author hasRssAuthorString ]) ifTrue: [
			rss author: author fullEmailAddress ].

		"category"
		rss category: [
			rss text: aProject title.
			aProject tags do: [ :each |
				rss text: ', '.
				rss text: each name ] ].
		
		"enclosure"
		(aVersionOrFeedEntry isVersion and: [ aVersionOrFeedEntry size > 0 ]) ifTrue: [
			rss enclosure
				url: (aVersionOrFeedEntry url: aProject);
				length: aVersionOrFeedEntry size;
				type: (WAMimeType main: 'application' sub: 'x-monticello') ].
		
		"guid"
		aVersionOrFeedEntry hasGuid ifTrue: [
			rss guid
				beNoPermaLink;
				with: (aProject guidStringFor: aVersionOrFeedEntry) ] ]