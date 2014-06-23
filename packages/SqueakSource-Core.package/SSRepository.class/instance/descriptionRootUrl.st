accessing-descriptions
descriptionRootUrl

	<magritteDescription>
	^ MAStringDescription new
		label: 'Root URL';
		selectorAccessor: #rootUrl;
		beReadonly;
		priority: 100;
		beRequired;
		yourself