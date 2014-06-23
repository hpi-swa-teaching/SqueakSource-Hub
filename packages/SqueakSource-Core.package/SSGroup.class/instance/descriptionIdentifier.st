accessing-descriptions
descriptionIdentifier

	<magritteDescription>
	^ MAStringDescription new
		label: 'Id';
		selectorAccessor: #id;
		addCondition: (self class defaultLengthAtMost: 50) labelled: 'Name must be less than 50 characters';
		addCondition: SSUniqueGroupIdCondition new labelled: 'this group already exists';
		priority: 100;
		beRequired;
		yourself