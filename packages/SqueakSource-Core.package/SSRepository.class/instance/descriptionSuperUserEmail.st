accessing-descriptions
descriptionSuperUserEmail

	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Super User E-mail';
		classes: {WAEmailAddress};
		selectorAccessor: #superUserEmail;
		default: OrderedCollection new;
		componentClass: TWBSMagritteOneToManyComponent;
		priority: 250;
		beRequired;
		yourself