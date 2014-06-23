accessing-versions
versionsNotReleased: aMember allowedTo: aSymbol

	(self isMember: aMember allowedTo: aSymbol) ifFalse: [ ^#() ].
	^self versionsSorted select: [:each | each isRelease not ]