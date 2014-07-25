*SqueakSource-Hub
jsonOn: aRenderer
	| description |
	description := self jsonDescription.

	description jsonWriter
		write: self
		description: description
		to: aRenderer