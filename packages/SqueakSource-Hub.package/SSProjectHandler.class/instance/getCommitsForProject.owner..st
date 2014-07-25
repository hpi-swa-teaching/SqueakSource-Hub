request-handling
getCommitsForProject: name owner: username
	<get>
	<path: '/{username}/{name}/commits'>
	<produces: 'text/json'>
	
	| project commits |
	commits := OrderedCollection new.
	project := SSRepository current projectAt: name ifAbsent: [self respondNotFound].
	project versionsDo: [:version | 
				commits add: (version asTimelineEvent: project) ] as: self currentMember. 
	^ commits asJson