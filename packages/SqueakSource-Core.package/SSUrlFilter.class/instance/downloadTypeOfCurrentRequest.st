private
downloadTypeOfCurrentRequest
	| agent |
	agent := self requestContext request
		headerAt: 'user-agent'
		ifAbsent: [ 'unknown' ].
	(agent beginsWith: 'Squeak') ifTrue: [^ #Squeak ].
 	(agent beginsWith: 'Pharo')  ifTrue: [^ #Pharo].
	(agent beginsWith: 'GemStone') ifTrue: [^ #GemStone].
	(agent beginsWith: 'curl') ifTrue: [^ #Curl].
	(agent beginsWith: 'Wget') ifTrue: [^ #Wget].
	^ #Web