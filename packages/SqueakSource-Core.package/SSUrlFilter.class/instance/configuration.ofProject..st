request-handling
configuration: fileName ofProject: projectName
	<get>
	<path: '/{projectName}/{fileName}.mcm'>
	self projectNamed: projectName do: [ :project |
		project configs at: fileName, '.mcm' ifPresent: [ :config |
			self requestContext respond: [ :response |
				response
					contentType: WAMimeType textPlain;
					nextPutAll: (String streamContents: [ :stream |
						config fileOutOn: stream ]) ] ].
			self errorNotFound: fileName, '.mcm' ]
