accessing-descriptions
descriptionProjectRegistration

	<magritteDescription>
	^ MABooleanDescription  new
		label: 'Everyone can register projects';
		selectorAccessor: #allowRegisterProject;
		componentClass: TWBSMagritteCheckboxComponent;
		default: true;
		priority: 350;
		beRequired;
		yourself