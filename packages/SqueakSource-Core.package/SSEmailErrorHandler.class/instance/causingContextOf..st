private
causingContextOf: anException
	| context |
	context := anException signalerContext. 
	[ context receiver isKindOf: Exception ]
		whileTrue: [ context := context sender ].
	^context