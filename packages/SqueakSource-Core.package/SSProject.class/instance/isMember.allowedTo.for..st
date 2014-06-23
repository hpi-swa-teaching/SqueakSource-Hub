testing
isMember: aMember allowedTo: aSymbol for: aVersion
	^(self isMember: aMember allowedTo: aSymbol)
		or: [ aVersion isRelease
		and: [ SSAccessPolicy read = aSymbol ] ]		