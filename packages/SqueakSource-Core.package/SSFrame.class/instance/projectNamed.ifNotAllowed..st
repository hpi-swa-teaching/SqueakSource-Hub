private
projectNamed: aString ifNotAllowed: aBlock
	| project |
	project := self repository projectAt: aString ifAbsent: [ ^nil ].
	^(self repository isVisible: project to: self user)
			ifTrue: [ project ]
			ifFalse: [ aBlock value: project ]