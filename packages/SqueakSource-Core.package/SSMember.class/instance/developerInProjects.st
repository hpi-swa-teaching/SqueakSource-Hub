conveniance
developerInProjects

	^ self repository visibleProjectsTo: self session user select: [:each |
		each developers includes: self]