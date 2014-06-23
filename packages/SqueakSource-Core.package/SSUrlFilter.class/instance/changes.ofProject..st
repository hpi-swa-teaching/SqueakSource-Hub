request-handling
changes: fileName ofProject: projectName
    <get>
    <path: '/{projectName}/changes/{fileName}.cs'>
    self
        projectNamed: projectName
        do: [ :project | 
            | version mcdData |
            version := project
                versionAt: (MCDiffyVersion verNameFrom: fileName) , '.mcz'
                ifAbsent: [ self errorNotFound: fileName ]
                as: self user.
            (mcdData := version getDiffyVersion: fileName in: project) ifNil: [ self errorNotFound: fileName ].
            self requestContext
                respond: [ :response | 
                    GRPlatform current
                        squeaksourceDoWithoutProgressNotification: [ 
                            response
                                contentType: WAMimeType textPlain;
                                nextPutAll:
                                        (String
                                                streamContents: [ :s | (SSChangesWriter on: s) writeVersion: (MCMcdReader versionFromStream: (RWBinaryOrTextStream on: mcdData)) ]) ] ] ]