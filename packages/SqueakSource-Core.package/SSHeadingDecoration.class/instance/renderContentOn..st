rendering
renderContentOn: html
	html div 
		class: 'page-header';
		with: [html heading: self message].
	self renderNextOn: html