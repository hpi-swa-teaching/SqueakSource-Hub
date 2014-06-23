accessing-shortcut
packageName
	packageName ifNil: [ packageName := self versionInfoName copyUpToLast: $- ].
	^packageName