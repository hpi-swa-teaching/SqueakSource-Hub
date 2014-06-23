accessing-calculated
pageRangeEnd
	| basicStart increment |
	basicStart := self basicPageRangeStart.
	increment := (self displayedPages / 2) + (self currentPage - basicStart).
	^ self maxPages
		min: self currentPage + increment