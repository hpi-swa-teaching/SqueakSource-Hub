*SqueakSource-Hub-accessing
licenseJson: aString
	| license |
	license := SSProject licenses select: [:each | each first = aString].
	license isEmpty
		ifTrue: [self license: (SSProject licenses at: 10)]
		ifFalse: [self license: license first]