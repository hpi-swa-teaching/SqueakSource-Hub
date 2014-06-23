as yet unclassified
setProjects: someProjects
	super setProjects: someProjects.
	configs := Array streamContents: [ :stream |
		projects do: [ :project |
			self appendConfigsInProject: project to: stream ] ].
