statistics
countVersions: aBlock
	| count |
	count := 0.
	self versionsDo: [ :each |
		(aBlock value: each)
			ifTrue: [ count := count + 1 ] ].
	^count