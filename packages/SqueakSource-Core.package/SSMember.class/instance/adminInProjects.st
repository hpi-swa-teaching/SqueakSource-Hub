conveniance
adminInProjects

	^ self repository visibleProjectsTo: self session user select: [:each |
		each admins includes: self]