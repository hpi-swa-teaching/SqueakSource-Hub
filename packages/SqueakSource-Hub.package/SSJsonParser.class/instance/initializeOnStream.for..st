initialize-release
initializeOnStream: aStream for: anObject
	self initializeOn: aStream.
	object := anObject.
	description := anObject jsonDescription