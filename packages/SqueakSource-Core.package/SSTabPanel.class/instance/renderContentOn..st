rendering
renderContentOn: html
	
	
	html div with: [
		self renderOptionsOn: html.
		html div
			class: 'navigation-content';
			with: [ self renderSelectionOn: html ] ]
	