as yet unclassified
getListingOf: aString owner: aString2
	<get>
	<path: '{aString2}/{aString}/main'>

	self requestContext respond: [ :response |
									response redirectTo: '/ss/', aString, '/' ]