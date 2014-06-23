accessing-descriptions
descriptionProjectVisibility

	<magritteDescription>
	^ MABooleanDescription  new
		label: 'Everyone can see all projects';
		selectorAccessor: #allProjectsVisible;
		componentClass: TWBSMagritteCheckboxComponent;
		default: true;
		priority: 300;
		beRequired;
		yourself