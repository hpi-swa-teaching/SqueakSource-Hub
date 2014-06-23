accessing-descriptions
descriptionIdentifier

	<magritteDescription>
	^ MAStringDescription new
		label: 'Unique Name';
		jsonName: 'sid';
		comment: 'used to construct the URL of the homepage';
		selectorAccessor: #id;
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Name must be not more than 50 characters';
		addCondition: SSProjectNameCondition new labelled: 'Name can only contain letters and digits';
		addCondition: SSUniqueProjectIdCondition new labelled: 'There is a project having this Name';
		priority: 100;
		beRequired;
		yourself