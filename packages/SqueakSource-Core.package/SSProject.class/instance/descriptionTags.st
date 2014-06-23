accessing-descriptions
descriptionTags

	<magritteDescription>
	^ MAMultipleOptionDescription new
		selectorAccessor: #tags;
		label: 'Tags';
		priority: 400;
		optionsAndLabels: self class defaultTags;
		componentClass: TWBSMagritteCheckboxGroupComponent;
		isJsonSerialized: false;
		yourself