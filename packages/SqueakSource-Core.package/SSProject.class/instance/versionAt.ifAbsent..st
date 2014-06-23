accessing-versions
versionAt: aFileName ifAbsent: aBlock
	| key |
	key := (aFileName endsWith: '.zip')
		ifTrue: [ (aFileName allButLast: 4), '.mcz'  ]
		ifFalse: [ aFileName ].
	^self versions
		at: key
		ifAbsent: aBlock