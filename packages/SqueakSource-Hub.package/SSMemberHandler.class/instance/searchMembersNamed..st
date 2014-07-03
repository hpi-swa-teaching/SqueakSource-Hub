request-handling
searchMembersNamed: aString
	<get>
	<path: '?term={aString}'>
	<produces: 'text/json'>
	
	| regex |
	regex := aString asRegexIgnoringCase.
	^ (SSRepository current membersSelect: [ :each | regex search: each login ]) asJson 