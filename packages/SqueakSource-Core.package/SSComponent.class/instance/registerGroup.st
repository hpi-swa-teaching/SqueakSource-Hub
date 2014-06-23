actions
registerGroup
	<actionNamed: 'Register Group' priority: 30 condition: #isHomeAndSuperUser>
	<icon: 'plus-sign'>
	| editor |
	editor := SSGroup new asRegisterComponent
		addTitle: 'Register Group'; 
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: editor)
		ifNotNilDo: [ :group | 
			self model addGroup: group.
			self session save ].
