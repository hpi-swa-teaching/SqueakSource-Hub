respond
respondNotFound
	self requestContext respond: [ :response | 
									response notFound]