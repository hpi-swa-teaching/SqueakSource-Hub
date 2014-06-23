accessing-descriptions
descriptionTagCreation

	<magritteDescription>
	^ MABooleanDescription  new
		label: 'Everyone can create tags';
		selectorAccessor: #allowCreateTag;
		componentClass: TWBSMagritteCheckboxComponent;
		default: true;
		priority: 400;
		beRequired;
		yourself