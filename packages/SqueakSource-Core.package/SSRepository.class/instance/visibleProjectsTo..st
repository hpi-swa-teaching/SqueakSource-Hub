accessing-projects
visibleProjectsTo: aUser
	^Array streamContents: [ :stream |
		self visibleProjectsTo: aUser do: [ :each |
			stream nextPut: each ] ]