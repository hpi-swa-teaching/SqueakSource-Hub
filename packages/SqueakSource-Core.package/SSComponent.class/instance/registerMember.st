actions
registerMember
	<actionNamed: 'Register Member' priority: 20 condition: #isHome>
	<icon: 'plus-sign'>

	| editor |
	editor := SSMember new asRegisterComponent
		addTitle: 'Register Member'; 
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: editor) ifNotNilDo: [ :member | 
		self model addMember: member.
		self session isValidUser ifFalse: [
			self session login: member ].
		self session save ].