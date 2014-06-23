accessing
styleColor: aColor
	color ~= aColor
		ifTrue: [
			color := aColor.
			self resetCss]