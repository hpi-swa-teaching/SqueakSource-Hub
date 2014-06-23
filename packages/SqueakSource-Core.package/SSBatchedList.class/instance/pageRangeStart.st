accessing-calculated
pageRangeStart
	| increment basicEnd |
	basicEnd := self basicPageRangeEnd.
	increment := (self displayedPages / 2) + (basicEnd - self currentPage).
	^ 1 max: self currentPage - increment