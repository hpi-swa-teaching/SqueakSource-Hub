request-handling
putVersion: fileName ofProject: projectName
	<put>
	<path: '/{projectName}/{fileName}.mcz'>
	| version |
	version := self basicPutVersionOfProject: projectName.
	version ifNotNil: [
		self requestContext respond: [ :response |
			response
				status: 201;
				nextPutAll: 'Version NOT blessed' ] ]
