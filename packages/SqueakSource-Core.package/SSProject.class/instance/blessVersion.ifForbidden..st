accessing-versions
blessVersion: aVersion ifForbidden: errorBlock
	
		((self repository blessingsEnabled) 
	and: [self canBless] 
	and: [self canBlessVersion: aVersion])
		ifFalse: [^ errorBlock value].
	(self blessedVersionListForPackage: aVersion package) addLast: aVersion