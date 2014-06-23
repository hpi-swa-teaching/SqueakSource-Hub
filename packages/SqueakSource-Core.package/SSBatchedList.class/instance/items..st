accessing
items: aCollection
	super items: aCollection.
	self currentPage: (self maxPages min: self currentPage)