request-handling
putBlessedVersion: fileName ofProject: projectName
	<put>
	<path: '/{projectName}/{fileName}.mcz/blessed'>
	self projectNamed: projectName do: [ :project |
		| version |
		version := self basicPutVersionOfProject: projectName.
		version ifNotNil: [
			| blessed |
			blessed := true.
			project
				blessVersion: version
				ifForbidden: [ blessed := false ].
			self requestContext respond: [ :response |
				response
					status: 201;
					nextPutAll: (blessed
						ifTrue: [ 'Version blessed' ]
						ifFalse: [ 'Version NOT blessed' ] )]]]
