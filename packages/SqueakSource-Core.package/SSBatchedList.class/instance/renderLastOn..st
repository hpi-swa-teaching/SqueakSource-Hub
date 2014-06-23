rendering
renderLastOn: html
	self pageRangeEnd = self maxPages ifFalse: [
		html space.
		self pageRangeEnd = (self maxPages - 1) ifFalse: [
			html text: '...'.
			html space ].
		html anchor
			callback: [self currentPage: self maxPages ];
			with: self maxPages.
		html space ].
	