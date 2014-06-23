accessing-descriptions
descriptionLocation

	<magritteDescription>
	^ MAStringDescription new
		jsonName: 'location';
		selectorAccessor: #location;
		beHidden;
		yourself