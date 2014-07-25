request-handling
searchTeamNamed: aString
	<get>
	<path: '?term={aString}'>
	<produces: 'text/json'>
	
	| regex |
	regex := aString asRegexIgnoringCase.
	^ (SSRepository current groups select: [ :each | regex search: each title ]) asJson 