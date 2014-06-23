testing
isVersionBlessed: aVersion
	^ (self blessedVersionForPackage: aVersion package) = aVersion