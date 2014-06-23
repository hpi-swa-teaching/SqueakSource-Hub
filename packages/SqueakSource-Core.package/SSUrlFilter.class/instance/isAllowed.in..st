private
isAllowed: aSymbol in: aProject
	^aProject isMember: self user allowedTo: aSymbol