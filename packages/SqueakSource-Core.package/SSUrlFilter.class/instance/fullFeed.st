request-handling
fullFeed
	<get>
	<path: 'feed.rss'>
	(SSRssListing projects: (self repository visibleProjectsTo: self user)) respondRendered.