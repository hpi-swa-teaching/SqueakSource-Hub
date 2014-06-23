private
version: fileName ofProject: projectName as: aMimeType
    self
        projectNamed: projectName
        do: [ :project | 
            | version |
            version := project versionAt: fileName , '.mcz' ifAbsent: [ self errorNotFound: fileName ] as: self user.
            version increaseDownloadCounterForType: self downloadTypeOfCurrentRequest.
            [ 
            self requestContext
                respond: [ :response | 
                    response
                        contentType: aMimeType;
                        binary;
                        nextPutAll: (self storage loadMonticello: version from: project) ] ]
                on: Error
                do: [ self errorNotFound: fileName ] ]