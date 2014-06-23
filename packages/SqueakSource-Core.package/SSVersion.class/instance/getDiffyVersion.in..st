accessing-diff
getDiffyVersion: aFileName in: aProject
	| diffName data |
	diffName := MCDiffyVersion canonicalNameFor: aFileName.
	self diffs at: diffName ifPresent: [:hasDiff | 
		^hasDiff ifTrue: [SSRepository storage loadDiffNamed: diffName from: aProject]].

	data := [self buildDiff: diffName in: aProject]
		value.
"		on: Error do: [:ex | ex return: nil]."
	data ifNotNil: [SSRepository storage saveDiff: data named: diffName to: aProject].
	self diffs at: diffName put: data notNil.
	^data