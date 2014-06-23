accessing
projects
	^self repository
		visibleProjectsTo: self session user
		select: [ :each | each hasTag: self ]