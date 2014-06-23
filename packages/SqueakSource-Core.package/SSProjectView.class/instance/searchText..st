accessing
searchText: aString
	| announcement |
	searchText := aString ifNotNil: [ aString withBlanksTrimmed ].
	announcement := SSSearchAnnoucement searchText: self searchText.
	self announcer announce: announcement