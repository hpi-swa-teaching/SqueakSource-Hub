accessing-descriptions
descriptionSid

	<magritteDescription>	
	^ MAStringDescription new
		jsonName: 'sid';
		selectorAccessor: #id;
		beHidden;
		yourself