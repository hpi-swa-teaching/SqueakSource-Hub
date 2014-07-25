request-handling
getVersionsOf: name owner: username
	<get>
	<path: '/{username}/{name}'>
	<produces: 'text/json'>
	
	| project commits |
	commits := OrderedCollection new.
	project := SSRepository current projectAt: name ifAbsent: [self respondNotFound].
	project versionsDo: [:version | 
				commits add: (version) ] as: self currentMember. 
	^ commits asJson