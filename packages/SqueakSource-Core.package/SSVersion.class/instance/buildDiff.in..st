accessing-diff
buildDiff: aFileName in: aProject
	| baseName base |
	baseName := MCDiffyVersion baseNameFrom: aFileName.
	base := aProject versionAt: baseName, '.', self readerClass extension ifAbsent: [^nil].
	^self buildDiffFrom: (base reader: aProject)
		to: (self reader: aProject).