helper
generateTimeline: aMember
	| createdProjects currentProjectsOfMember commitedVersions timeline |

	createdProjects := SSRepository current visibleProjectsTo: self currentMember select: [:each |
		each creator = aMember].
	
	currentProjectsOfMember := SSRepository current visibleProjectsTo: self currentMember
				select: [:each | each hasMember: aMember].
	
	commitedVersions := Array streamContents: [:stream |
							 currentProjectsOfMember do: [:project | (project versionsSortedByTimeAs: self currentMember) do: 
								[:version | version author = aMember
								ifTrue: [ stream nextPut: version] ] ] ].
	
	timeline := OrderedCollection new.
	timeline addAll: (createdProjects collect: [:each | each asTimelineEvent]).
	timeline addAll: (commitedVersions collect: [:each | each asTimelineEvent]).
	

	^ timeline