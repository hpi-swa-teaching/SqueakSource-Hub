request-handling
homepageOfProject: projectName
	<get>
	<path: '/{projectName}.html'>
	self projectNamed: projectName do: [ :project |
		self noRouteFound: self requestContext ]
