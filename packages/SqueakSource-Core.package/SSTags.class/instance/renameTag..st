actions
renameTag: aTag
	| newName |
	newName := ''.
	[ newName isEmptyOrNil ] whileTrue: [
		newName := self request: 'New name of the tag: ' ].
	(self repository hasTagNamed: newName)
		ifTrue: [ self alreadyExists: newName ]
		ifFalse: [ 
			self repository renameTag: aTag to: newName.
			self session save.
			self resetModel ]