request-handling
feedOfProject: projectName
	<get>
	<path: '/{projectName}/feed.rss'>
	self projectNamed: projectName do: [ :project |
		(self isAllowed: SSAccessPolicy read in: project) 
			ifFalse: [self authResponseFor: project]
			ifTrue: [
				(SSRssListing project: project) respondRendered ]]