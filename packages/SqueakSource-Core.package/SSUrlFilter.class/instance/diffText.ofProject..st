request-handling
diffText: fileName ofProject: projectName
    <get>
    <path: '/{projectName}/{fileName}.diff'>
    self
        projectNamed: projectName
        do: [ :project | 
            | version |
            self flag: #topa.	"For efficiency, this should use the cached .mcd instead of diffing all the time"
            version := project versionAt: fileName , '.mcz' ifAbsent: [ self errorNotFound: fileName ] as: self user.
            self requestContext
                respond: [ :response | 
                    response
                        contentType: WAMimeType textPlain;
                        nextPutAll:
                                (String streamContents: [ :s | (SSDiffyTextWriter on: s) writeVersion: version for: project ]) ] ]