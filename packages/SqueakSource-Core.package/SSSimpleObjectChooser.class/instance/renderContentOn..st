rendering
renderContentOn: html
	html heading: self heading.
	self infoBlock ifNotNil: [:infoBlock | 
		html div: [
			infoBlock value: html]].
	html form: [
		html div: [
			html select
				size: 15;
				style: 'width: 100%';
				list: self model;
				on: #selection of: self.
			html break; break.
			html submitButton
				callback: [ self answer: self selection ];
				text: 'Ok'.
			html submitButton
				callback: [ self answer: nil ];
				text: 'Cancel' ] ]