*SqueakSource-Hub-accessing
tagsString: aCommaString
	self tags: ((aCommaString findTokens: ',') collect: [:each | each withBlanksTrimmed])