accessing-descriptions
descriptionMcUsername

	<magritteDescription>
	^ MAStringDescription new
		jsonName: 'mcUsername';
		selectorAccessor: #mcUsername;
		beHidden;
		yourself