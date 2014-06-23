accessing-diff
diffNamesDo: aBlock
	^self diffs keysAndValuesDo: [:diffName :valid |
		valid ifTrue: [ aBlock value: diffName ] ]
