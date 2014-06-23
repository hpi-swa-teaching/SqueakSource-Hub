printing
jsonOn: aRenderer
	| description |
	description := self magritteDescription.
	description jsonWriter
		write: self
		description: description
		to: aRenderer