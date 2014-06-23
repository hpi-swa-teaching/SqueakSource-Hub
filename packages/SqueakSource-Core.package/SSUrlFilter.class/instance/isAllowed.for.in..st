private
isAllowed: aSymbol for: aVersion in: aProject
	^aProject isMember: self user allowedTo: aSymbol for: aVersion