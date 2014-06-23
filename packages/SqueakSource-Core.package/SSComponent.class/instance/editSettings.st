actions
editSettings
	
	<actionNamed: 'Edit Settings' priority: 50 condition: #canEditSettings>
	<icon: 'wrench'>
	
	| editor |
	editor := self repository asComponent
		addTitle: 'Repository Settings';
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: editor)
		ifNotNil: [ self session save ]