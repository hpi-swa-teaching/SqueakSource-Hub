initialization
appendProject: aProject to: aStream
	aProject versionsDo: [ :version |
		aStream nextPut: aProject -> version ]