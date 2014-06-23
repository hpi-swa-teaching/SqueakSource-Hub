request-handling
zippedVersion: fileName ofProject: projectName
	<get>
	<path: '/{projectName}/{fileName}.zip'>
	"Fake a ZIP for Google"
	self
		version: fileName
		ofProject: projectName
		as: (WAMimeType main: 'application' sub: 'zip')
