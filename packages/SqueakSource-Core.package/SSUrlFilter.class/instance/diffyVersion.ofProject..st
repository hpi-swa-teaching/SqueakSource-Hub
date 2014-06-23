request-handling
diffyVersion: fileName ofProject: projectName
    <get>
    <path: '/{projectName}/{fileName}.mcd'>
    self
        projectNamed: projectName
        do: [ :project | 
            | verName version mcdData |
            verName := MCDiffyVersion verNameFrom: fileName.
            version := project versionAt: verName , '.mcz' ifAbsent: [ self errorNotFound: fileName ] as: self user.
            mcdData := version getDiffyVersion: fileName in: project.
            mcdData ifNil: [ self errorNotFound: fileName ].
            version increaseDownloadCounterForType: self downloadTypeOfCurrentRequest.
            self requestContext
                respond: [ :response | 
                    response
                        contentType: (WAMimeType main: 'application' sub: 'x-monticello');
                        binary;
                        nextPutAll: mcdData ] ]