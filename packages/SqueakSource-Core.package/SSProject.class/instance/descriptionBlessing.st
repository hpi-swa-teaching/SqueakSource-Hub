accessing-descriptions
descriptionBlessing

	<magritteDescription>
	^ MABooleanDescription new
		label: 'Enable Blessing';
		isJsonSerialized: false;
		selectorAccessor: #canBless;
		componentClass: TWBSMagritteCheckboxComponent;
		priority: 600;
		yourself