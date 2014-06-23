rendering
renderFirstOn: html
	self pageRangeStart = 1 ifFalse: [
		html anchor
			callback: [self currentPage: 1 ];
			with: '1'.
		html space.
		self pageRangeStart = 2 ifFalse: [
			html text: '...'.
			html space ] ]