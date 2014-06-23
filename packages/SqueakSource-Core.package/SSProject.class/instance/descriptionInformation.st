accessing-descriptions
descriptionInformation

	<magritteDescription>
	^ MAMemoDescription new
		label: 'Description';
		jsonName: 'projectDescription';
		selectorAccessor: #information;
		priority: 300;
		yourself