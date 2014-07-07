request-handling
searchProjectsNamed: aString
	<get>
	<path: '?term={aString}'>
	<produces: 'text/json'>
	
	| regex |
	regex := aString asRegexIgnoringCase.
	^ (SSRepository current visibleProjectsTo: self currentMember select: [ :each | regex search: each title ]) asJson 