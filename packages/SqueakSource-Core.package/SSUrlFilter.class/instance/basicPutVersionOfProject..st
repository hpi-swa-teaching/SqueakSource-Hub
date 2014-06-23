private
basicPutVersionOfProject: projectName
    self
        writeProjectNamed: projectName
        do: [ :project :author | 
            | data version blessed |
            data := self requestContext request rawBody.
            version := [ project addVersion: data author: author as: self user ]
                on: SSVersionAlreadyExists
                do: [ :exception | 
                    self requestContext
                        respond: [ :response | 
                            response
                                status: 409;
                                contentType: WAMimeType textPlain;
                                nextPutAll: 'Version already exists: ';
                                nextPutAll: exception messageText ] ].
            ^ version ].
    ^ nil