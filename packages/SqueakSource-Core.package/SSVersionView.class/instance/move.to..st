actions
move: someVersions to: targetProject
    someVersions
        do: [ :each | 
            [ 
            self project
                moveVersion: each
                to: targetProject
                author: self user
                as: self user ]
                on: SSVersionAlreadyExists
                do: [ :exception | 
                    self inform: 'Version already exists in target project. ' , exception messageText.
                    self answer: nil ] ].
    self session save.
    self answer