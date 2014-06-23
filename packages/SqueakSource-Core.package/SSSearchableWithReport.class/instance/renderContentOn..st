rendering
renderContentOn: html
	self renderHeading ifTrue: [html heading: self heading].
	self
		renderSearchOn: html;
		renderReportOn: html.