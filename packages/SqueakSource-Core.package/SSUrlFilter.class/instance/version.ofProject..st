request-handling
version: fileName ofProject: projectName
	<get>
	<path: '/{projectName}/{fileName}.mcz'>
	self
		version: fileName
		ofProject: projectName
		as: (WAMimeType main: 'application' sub: 'x-monticello')
