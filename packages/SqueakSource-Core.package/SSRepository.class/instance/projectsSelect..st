accessing-projects
projectsSelect: aBlock
	^Array streamContents: [ :stream |
		self projectsDo: [ :each |
			(aBlock value: each) ifTrue: [
				stream nextPut: each ] ] ]