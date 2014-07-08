helper
generateTimeline: aMember
	| timeline |
	
	timeline := OrderedCollection new.
	timeline 
		addAll: (self generateTimelineProjects: aMember);
		addAll: (self generateTimelineCommits: aMember);
		sort: [:a :b | (a at: 'timestamp') > (b at: 'timestamp')].
	
	^ timeline