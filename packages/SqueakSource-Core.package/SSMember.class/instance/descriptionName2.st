accessing-descriptions
descriptionName2

	<magritteDescription>	
	^ MAStringDescription new
		jsonName: 'name';
		selectorAccessor: #name;
		beHidden;
		yourself