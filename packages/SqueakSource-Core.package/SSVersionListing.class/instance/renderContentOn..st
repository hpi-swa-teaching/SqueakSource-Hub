rendering
renderContentOn: html
	self associations do: [ :assoc |
		self renderProject: assoc key version: assoc value on: html ]