request-handling
getVersion: versionname project: projectname owner: owner
	<get>
	<path: '/{owner}/{projectname}/{versionname}'>
	<produces: 'text/json'>
	
	| version project commits |
	commits := OrderedCollection new.
	project := SSRepository current projectAt: projectname ifAbsent: [self respondNotFound].
	version := project versionAt: versionname, '.mcz' ifAbsent: [self respondNotFound] as: self currentMember.
	^ version asJson