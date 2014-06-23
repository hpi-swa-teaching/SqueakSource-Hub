convenience
fileNameFaked: aBoolean
	| basicFileName |
	basicFileName := self fileName.
	^(aBoolean and: [ basicFileName endsWith: '.mcz' ])
		ifTrue: [ (basicFileName allButLast: 4), '.zip' ]
		ifFalse: [ basicFileName ]