as yet unclassified
getTimeline: username
	<get>
	<path: '/{username}'>
	<produces: 'text/json'>

	| repository member createdProjects timeline |
	repository := SSRepository current.
	member := repository memberAt: username.
	member isAnonymous ifTrue: [
		self requestContext respond: [ :response |
										response notFound ] ].
								
	createdProjects := SSRepository current visibleProjectsTo: self currentMember select: [:each |
		each creator = member].
	
	timeline := createdProjects collect: [:each | each asTimelineEvent ].

	^ timeline asJson 