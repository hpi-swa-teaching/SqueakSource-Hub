actions
nextPage
	self isOnLastPage ifFalse: [
		self currentPage:
			(self maxPages min: self currentPage + 1) ]