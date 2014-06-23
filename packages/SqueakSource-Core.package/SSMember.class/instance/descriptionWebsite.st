accessing-descriptions
descriptionWebsite

	<magritteDescription>
	^ MAStringDescription new
		jsonName: 'website';
		selectorAccessor: #website;
		beHidden;
		yourself