initialization
initializeFromStream: aStream
	self initializeFromReader: (self readerClass on: aStream)