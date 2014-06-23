accessing
repository

	^ repository ifNil: [repository := super repository]
