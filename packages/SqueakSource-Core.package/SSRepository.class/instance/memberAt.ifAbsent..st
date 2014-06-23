accessing-members
memberAt: aString ifAbsent: aBlock
	aString ifNil: [ ^aBlock value ].
	^members at: aString ifAbsent: aBlock