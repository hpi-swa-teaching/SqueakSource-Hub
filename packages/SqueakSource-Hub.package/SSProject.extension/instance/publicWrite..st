*SqueakSource-Hub-accessing
publicWrite: aBoolean
	aBoolean
		ifTrue: [self globalRight: SSAccessPolicy allowAllWrite]
		ifFalse: [self globalRight: SSAccessPolicy allowAllRead]