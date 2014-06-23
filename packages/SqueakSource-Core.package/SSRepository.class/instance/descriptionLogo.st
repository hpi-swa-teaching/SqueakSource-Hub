accessing-descriptions
descriptionLogo

	<magritteDescription>
	^ MAFileDescription new
		kind: MAMemoryFileModel;
		label: 'Logo';
		selectorAccessor: #logo;
		priority: 600;
		yourself