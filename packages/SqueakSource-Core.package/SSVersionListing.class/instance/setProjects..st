initialization
setProjects: aCollection
	projects := aCollection.
	associations := Array streamContents: [ :stream |
		projects do: [ :project |
			self appendProject: project to: stream ] ].
	associations sort: [ :x :y | x value timestamp > y value timestamp ].