rendering
renderNextOn: html
	html space.
	self isOnLastPage
		ifFalse: [
			html anchor
				title: 'next';
				callback: [self nextPage];
				with: [html big: [html html: '&rsaquo;']].
			html space.
			html anchor
				title: 'last';
				callback: [self lastPage];
				with: [html big: [html html: '&raquo;']]]
		ifTrue: [html big: [html html: '&raquo;']].
