actions
edit
	<actionNamed: 'Edit project' priority: 30 access: #admin>
	<icon: 'cogs'>
	| component |
	component := self model asComponent
		addDecoration: SSExplanationDecoration new;
		addTitle: 'Edit Project'; 
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: component)
		ifNotNil: [ self saveSession ].