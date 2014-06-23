accessing-versions
unblessVersion: aVersion

	(self blessedVersionListForPackage: aVersion package) remove: aVersion ifAbsent: [].