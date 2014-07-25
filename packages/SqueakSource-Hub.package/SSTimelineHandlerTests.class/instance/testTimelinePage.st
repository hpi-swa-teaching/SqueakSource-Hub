tests
testTimelinePage
	| json member page response |
	member := ((SSMember login: 'maxmuster') fullname: '').
	page := self handlerClass new pageSize.
	SSRepository current addMember: member.
	1 to: page+2 do: [:i |
		SSRepository current addProject: (((SSProject creator: member) id: 'Project' , i) license: 'MIT') ].
	json := self getJson: #('maxmuster' '1').		
	self assert: (json size = page).
	json := self getJson: #('maxmuster' '2').		
	self assert: (json size = 2).
	
	response := (self get: #('maxmuster' 'NotaNumber')) response.
	
	self assert: (response status = 400).
	
	response := (self get: #('marxmuster' '1')) response.
	
	self assert: (response status = 404).