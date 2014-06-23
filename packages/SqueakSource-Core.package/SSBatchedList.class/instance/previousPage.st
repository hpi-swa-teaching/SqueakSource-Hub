actions
previousPage
	self isOnFirstPage ifFalse: [
		self currentPage: (1 max: currentPage - 1) ]