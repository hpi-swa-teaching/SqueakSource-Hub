accessing-tags
renameTag: aTag to: aString
	| oldName |
	oldName := aTag name.
	aTag name: aString.
	self projectsDo: [ :each |
		(each hasTagNamed: aString) ifTrue: [
			each reSortTags ] ].
	tags removeKey: oldName.	
	self addTag: aTag