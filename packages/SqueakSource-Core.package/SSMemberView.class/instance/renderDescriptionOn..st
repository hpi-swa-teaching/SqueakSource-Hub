rendering
renderDescriptionOn: html

	self model information ifNotNil: [
		self
			withLineBreaks: self model information
			on: html].