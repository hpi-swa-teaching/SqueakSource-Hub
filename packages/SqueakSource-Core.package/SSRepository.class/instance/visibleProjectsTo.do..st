accessing-projects
visibleProjectsTo: aUser do: aBlock
	self allProjectsVisible ifTrue: [
		^self projectsDo: aBlock ].
	self projectsDo: [:each |
		(self isVisible: each to: aUser) ifTrue: [
			aBlock value: each ] ]