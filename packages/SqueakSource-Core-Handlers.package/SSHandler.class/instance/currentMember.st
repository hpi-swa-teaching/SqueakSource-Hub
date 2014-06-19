as yet unclassified
currentMember
	self memberFromAuthorization ifNil: [ ^ self memberFromCookie ].