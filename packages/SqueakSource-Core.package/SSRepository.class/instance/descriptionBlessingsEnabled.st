accessing-descriptions
descriptionBlessingsEnabled

	<magritteDescription>
	^ MABooleanDescription  new
		label: 'Enable version blessings';
		selectorAccessor: #blessingsEnabled;
		componentClass: TWBSMagritteCheckboxComponent;
		default: true;
		priority: 350;
		beRequired;
		yourself