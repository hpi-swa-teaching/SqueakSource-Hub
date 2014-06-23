rendering
renderCommentButtonOn: html

	| button |
	button := html button.
	self model switchIsComment
		ifTrue: [
			button 
				bePush;
				class: 'btn btn-primary disabled']
		ifFalse: [
			button 
				class: 'btn';
				callback: [ self model switchBeComment ]].
	button 
		text: 'Comment'.
	html space.
