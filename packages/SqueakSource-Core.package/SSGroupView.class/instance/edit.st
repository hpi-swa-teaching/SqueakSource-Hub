actions
edit
	<actionNamed: 'Edit group' priority: 30 access: #admin>
	<action: 'edit'>
	| component |
	component := self model asComponent
		addTitle: 'Edit Group'; 
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: component)
		ifNotNil: [ self session save ]
