accessing-descriptions
descriptionTagsString

	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #tagsString;
		label: 'Tagsstring';
		jsonName: 'tagsString';
		beHidden;
		yourself