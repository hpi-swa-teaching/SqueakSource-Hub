conveniance
guestInProjects

	^ self repository visibleProjectsTo: self session user select: [:each |
		each guests includes: self]