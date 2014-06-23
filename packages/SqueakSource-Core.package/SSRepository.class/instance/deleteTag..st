accessing-tags
deleteTag: aTag
	self projectsDo: [ :each |
		(each hasTag: aTag) ifTrue: [
			each removeTag: aTag ] ].
	tags removeKey: aTag name