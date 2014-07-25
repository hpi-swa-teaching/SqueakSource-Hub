tests
testWatchingTimelinePage
	| json member project expectation version |
	member := ((SSMember login: 'maxmuster') fullname: '').
	project := ((SSProject creator: member) id: 'Project') license: 'MIT'.

	SSRepository current
		addMember: member;
		addProject: project.
	
	version := (SSVersion stream: (self class createTestVersion: 'Foo-Bar' author: 'Tester') author: member).
	project addVersion: version.
	member favorites add: project.
	
	json := self getJson: #('maxmuster' 'watching').	
	expectation := {version asTimelineEvent: project}.
	self assert: (expectation = json ).
	