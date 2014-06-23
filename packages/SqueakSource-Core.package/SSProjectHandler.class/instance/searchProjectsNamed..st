as yet unclassified
searchProjectsNamed: aString
	<get>
	<path: '?term={aString}'>
	<produces: 'text/json'>
	
	| regex |
	regex := aString asRegexIgnoringCase.
	^ (SSRepository current projectsSelect: [ :each | regex search: each title ]) asJson 