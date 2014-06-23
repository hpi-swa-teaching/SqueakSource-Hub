actions
registerProject
	<actionNamed: 'Register Project' priority: 40 condition: #canRegisterProject>
	<icon: 'plus-sign'>

	| editor |
	editor := (SSProject creator: self session user) asRegisterComponent
		addDecoration: SSExplanationDecoration new;
		addDecoration: SSIntroductionDecoration new;
		addTitle: 'Register Project';
		addTWBSFormCustomizing: [:deco | deco beHorizontal];
		yourself.
	(self call: editor) ifNotNilDo: [ :project | 
		self model addProject: project.
		self session save.
		self call: project view ] 