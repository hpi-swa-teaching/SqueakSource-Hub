accessing-projects
visibleProjectsTo: aMember select: aBlock

	^ Array streamContents: [:stream |
		self visibleProjectsTo: aMember do: [:each |
			(aBlock value: each) ifTrue: [
				stream nextPut: each ]]]