accessing-descriptions
descriptionTitle

	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		jsonName: 'name';
		comment: 'the human readable title';
		selectorAccessor: #title;
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Title must be less than 50 characters';
		priority: 200;
		beRequired;
		yourself