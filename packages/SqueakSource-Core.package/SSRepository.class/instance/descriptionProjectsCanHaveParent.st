accessing-descriptions
descriptionProjectsCanHaveParent

	<magritteDescription>
	^ MABooleanDescription  new
		label: 'Projects can have a parent';
		selectorAccessor: #projectsCanHaveParent;
		componentClass: TWBSMagritteCheckboxComponent;
		default: false;
		priority: 400;
		beRequired;
		yourself