rendering
renderConfigsOn: html
	self configs do: [ :each |
		self renderProject: each key config: each value on: html ]