helper
applicationUrl
	| registeredHandlers possibleUrls |
	registeredHandlers := WAAdmin defaultDispatcher handlers.
	possibleUrls := (registeredHandlers select: [:each |
		each class = WAApplication and: [each sessionClass = SSSession]]) keys.
	^ possibleUrls isEmpty
		ifTrue: ['/ss']
		ifFalse: ['/', possibleUrls first].