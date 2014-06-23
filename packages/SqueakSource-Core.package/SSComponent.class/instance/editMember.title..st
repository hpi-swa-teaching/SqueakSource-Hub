actions
editMember: aMember title: aTitleString

	| editor |
	editor := aMember asComponent
		addTitle: aTitleString;
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: editor)
		ifNotNil: [ self session save ]