tests
testCount
	| response member project version versionStream |
	
	member := SSMember login: 'Test1'.
	project := ((SSProject creator: member) id: 'Project1') license: 'MIT'.

	versionStream := self class createTestVersion: 'Foo-Bar' author: 'Test1'.
	version := SSVersion stream: versionStream author: member.

	SSRepository current
		addMember: member;
		addProject: project.
		
	response := self getJson: #('count').
	self assert: (response = 0).

	project addVersion: version.
	response := self getJson: #('count').
	self assert: (response = 1).