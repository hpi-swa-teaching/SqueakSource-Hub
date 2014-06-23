request-handling
changesOfProject: projectName
	<get>
	<path: '/{projectName}/changes/'>
	self changesOfProject: projectName view: 'collapse'.