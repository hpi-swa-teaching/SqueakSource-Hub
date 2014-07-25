*SqueakSource-Hub-accessing
public: aBoolean
	self publicWrite ifTrue: [^self].
	aBoolean
		ifTrue: [self globalRight: SSAccessPolicy allowAllRead]
		ifFalse: [self globalRight: SSAccessPolicy allowNothing].