as yet unclassified
renderedContent

	^ (GRPlatform current magritteClassNamed: #'GZipWriteStream')
		ifNotNil: [:zipper | 			
			ByteArray streamContents: [ :stream |
				(zipper on: stream)
					nextPutAll: super renderedContent asByteArray;
					finish]]