respond
notFound
	^ self requestContext respond: [:response | response notFound]