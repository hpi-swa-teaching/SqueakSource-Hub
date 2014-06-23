accessing
guessedAuthor
	^self repository
		memberAt: (self versionInfo name copyAfterLast: $-)
		ifAbsent: [ nil ]