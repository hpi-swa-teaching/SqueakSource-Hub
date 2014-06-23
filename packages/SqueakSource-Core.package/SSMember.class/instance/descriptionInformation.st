accessing-descriptions
descriptionInformation

	<magritteDescription>
	^ MAMemoDescription new
		label: 'Information';
		isJsonSerialized: false;
		selectorAccessor: #information;
		priority: 600;
		yourself