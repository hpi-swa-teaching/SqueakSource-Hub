updating
updateUrl: anUrl

	| assoc |
	super updateUrl: anUrl.

	assoc := components detect: [ :each | each key = self selection ] ifNone: [ ^ self ].
	anUrl addToPath: assoc key