accessing-descriptions
descriptionTitle

	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		selectorAccessor: #title;
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Title must be less than 50 characters';
		priority: 100;
		beRequired;
		yourself