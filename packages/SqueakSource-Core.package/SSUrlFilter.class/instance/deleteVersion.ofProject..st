request-handling
deleteVersion: fileName ofProject: projectName
    <delete>
    <path: '/{projectName}/{fileName}.mcz'>
    self projectNamed: projectName do: [ :project | 
            | version |
            version := project versionAt: fileName , '.mcz' ifAbsent: [ self errorNotFound: fileName ] as: self user.

            [project deleteVersion: version as: self user.
		] on: SSProjectAccessViolation do: [^ self authResponseFor: project].
	
            self storage log: 'DELETE ' , self requestContext request url greaseString , ' (' , self user login , ')'.
            self requestContext respond: [ :response | response status: 204 ] ]