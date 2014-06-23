initialization
appendProject: aProject to: aStream
    aProject
        versionsDo: [ :version | 
            self cutoff < version timestamp
                ifTrue: [ aStream nextPut: aProject -> version ] ].
    aProject feeds do: [ :feed | aStream nextPut: aProject -> feed ]