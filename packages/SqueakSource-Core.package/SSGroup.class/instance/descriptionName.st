accessing-descriptions
descriptionName

	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		selectorAccessor: #fullname;
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Name must be less than 50 characters';
		priority: 200;
		beRequired;
		yourself