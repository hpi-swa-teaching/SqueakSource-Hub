accessing
title
	^self isOneProject
		ifTrue: [ self project title ]
		ifFalse: [ self repository title ]