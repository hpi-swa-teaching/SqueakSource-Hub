accessing-versions
allBlessedVersions
	^ self blessings keys asSortedCollection collect: [:ea | self blessedVersionForPackage: ea]