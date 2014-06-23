rendering
renderClassButtonOn: html

	| button |
	button := html button.
	self model switchIsClass
		ifTrue: [
			button 
				bePush;
				class: 'btn btn-primary disabled']
		ifFalse: [
			button 
				class: 'btn';
				callback: [ self model switchBeClass ]].
	button 
		text: 'Class'.
	html space.
