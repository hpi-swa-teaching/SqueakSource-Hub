accessing-descriptions
descriptionPath

	<magritteDescription>	
	^ MAStringDescription new
		jsonName: 'path';
		selectorAccessor: #path;
		beHidden;
		yourself