request-handling
getMagritteProject: identifier
	<get>
	<path: '/magritte/{identifier}'>

	| repository project |
	repository := SSRepository current.
	project := repository projectAt: identifier.
	project ifNil: [^ '{}'].
	^ project asJson