accessing-project
latestDiffNameIn: aProject

	| ancestorAndProject |
	ancestorAndProject := (self versionInfo latestAncestorAndProject: aProject)
		ifNil: [(self reader: aProject) info latestAncestorAndProject: aProject].
	(ancestorAndProject isNil or: [ancestorAndProject second ~= aProject])
		ifTrue: [^nil].
	^ MCDiffyVersion
		nameForVer: self versionInfo name
		base: ancestorAndProject first versionInfo name.