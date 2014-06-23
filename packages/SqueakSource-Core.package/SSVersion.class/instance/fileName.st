convenience
fileName
	fileName ifNil: [ 
		fileName := String streamContents: [ :stream |
			stream nextPutAll: self versionInfoName.
			stream nextPut: $..
			stream nextPutAll: self readerClass extension ]].
	^fileName