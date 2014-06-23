accessing-descriptions
descriptionEmail

	<magritteDescription>
	^ MAStringDescription new
		label: 'Email address';
		jsonName: 'email';
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Address must be less than 50 characters';
		selectorAccessor: #email;
		priority: 400;
		yourself