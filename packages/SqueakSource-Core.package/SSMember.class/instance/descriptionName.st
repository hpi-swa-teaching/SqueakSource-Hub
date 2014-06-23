accessing-descriptions
descriptionName

	<magritteDescription>
	^ MAStringDescription new
		label: 'Name';
		jsonName: 'fullName';
		selectorAccessor: #fullname;
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Name must be less than 50 characters';
		priority: 100;
		beRequired;
		yourself