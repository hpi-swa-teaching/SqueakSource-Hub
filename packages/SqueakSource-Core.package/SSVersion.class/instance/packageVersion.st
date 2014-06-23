accessing-shortcut
packageVersion
	packageVersion ifNil: [ packageVersion := [ (self versionInfoName copyAfterLast: $.) asNumber ] ifError: [ :e | 0 ]].
	^packageVersion
	