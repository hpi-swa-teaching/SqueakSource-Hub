accessing-settings
projectsCanHaveParent

	^ self propertyAt: #projectsCanHaveParent ifAbsent: [false]
	