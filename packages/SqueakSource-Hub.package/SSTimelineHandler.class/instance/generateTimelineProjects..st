helper
generateTimelineProjects: aMember
	| createdProjects |

	createdProjects := SSRepository current visibleProjectsTo: 
		self currentMember select: [:each | each creator = aMember].

	^ createdProjects collect: [:each | each asTimelineEvent]