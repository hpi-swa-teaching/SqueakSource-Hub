rendering
renderPreviousOn: html
	self isOnFirstPage
		ifFalse: [ 
			html anchor
				title: 'first';
				callback: [self firstPage];
				with: [html big: [html html: '&laquo;']].
			html space.
			html anchor
				title: 'previous';
				callback: [self previousPage];
				with: [html big: [html html: '&lsaquo;']]]
		ifTrue: [html big: [html html: '&laquo;']].
	html space.
