accessing
styleColor

	color ifNil: [color := self class defaultColor].
	^ color