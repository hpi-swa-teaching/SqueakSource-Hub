helper
generateTimelineCommits: aMember
	| currentProjectsOfMember commits |
	
	currentProjectsOfMember := SSRepository current visibleProjectsTo: self currentMember
				select: [:each | each hasMember: aMember].
	
	commits := OrderedCollection new.
	currentProjectsOfMember do: [:project |  project versionsDo: [:version | 
									version author = aMember 
										ifTrue: [commits add: (version asTimelineEvent: project)]
											] as: self currentMember].
	^ commits