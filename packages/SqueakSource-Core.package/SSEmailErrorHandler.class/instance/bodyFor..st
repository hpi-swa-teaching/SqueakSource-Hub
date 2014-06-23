printing-email
bodyFor: anException
	
	^ WAStringEmailBody string: (String streamContents: [ :stream |
		self printDescriptionOf: anException on: stream.
		self printWalkbackOf: (self causingContextOf: anException) on: stream ])