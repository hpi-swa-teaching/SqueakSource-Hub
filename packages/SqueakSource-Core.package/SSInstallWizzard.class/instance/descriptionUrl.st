description
descriptionUrl

	<magritteDescription>
	^ MAStringDescription new
		label: 'Installation URL';
		propertyAccessor: #url;
		default: 'ss';
		priority: 100;
		beRequired;
		yourself