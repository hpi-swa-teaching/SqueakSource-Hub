request-handling
putMap: fileName ofProject: projectName
	<put>
	<path: '/{projectName}/{fileName}.mcm'>
	self writeProjectNamed: projectName do: [ :project :author |
		| data config |
		data := self requestContext request rawBody.
		config := project addConfig: data author: author url: self requestContext request url.
		self requestContext respond: [ :response |
			response
				status: 201;
				nextPutAll: 'Version NOT blessed' ] ] 