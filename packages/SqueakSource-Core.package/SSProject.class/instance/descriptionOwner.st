accessing-descriptions
descriptionOwner

	<magritteDescription>
	^ MAStringDescription new
		jsonName: 'owner';
		selectorAccessor: #creatorLogin;
		beHidden;
		yourself