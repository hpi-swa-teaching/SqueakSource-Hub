tests
testSearchProjectsNamed
	| response member project1 project2 |
	
	member := SSMember login: 'Test1'.
	project1 := (SSProject creator: member)
						id: 'Project1';
						title: 'Test Projekt';
						license: #('MIT' 'http://www.opensource.org/licenses/mit-license.php').
	project2 := (SSProject creator: member)
						id: 'Project2';
						title: 'Muster-Projekt';
						license: #('MIT' 'http://www.opensource.org/licenses/mit-license.php').
	SSRepository current
		addMember: member;
		addProject: project1;
		addProject: project2.
	
	response := (self get: #('?term=est')) response.
	self assert: (response status = 200).
	self assert: (response contents = (Array with: project1) asJson).
	
	response := (self get: #('?term=Muster')) response.
	self assert: (response status = 200).
	self assert: (response contents = (Array with: project2) asJson).


	response := (self get: #('?term=Pro')) response.
	self assert: (response status = 200).
	self assert: (response contents = (Array with: project1 with: project2) asJson).
	
