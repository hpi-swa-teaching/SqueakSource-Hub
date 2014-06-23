rendering
renderInstanceButtonOn: html

	| button |
	button := html button.
	self model switchIsInstance 
		ifTrue: [
			button 
				bePush;
				class: 'btn btn-primary disabled']
		ifFalse: [
			button 
				class: 'btn';
				callback: [ self model switchBeInstance ]].
	button 
		text: 'Instance'.
	html space.
