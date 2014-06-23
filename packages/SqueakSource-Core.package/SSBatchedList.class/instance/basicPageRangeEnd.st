accessing-calculated
basicPageRangeEnd
	^ self maxPages
		min: self currentPage + (self displayedPages / 2)