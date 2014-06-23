accessing-descriptions
descriptionDevelopers

	<magritteDescription>
	^ MAMultipleOptionDescription new
		selectorAccessor: #developers;
		label: 'Developers';
		options: self class defaultParticipants;
		priority: 900;
		reference: SSFullnameReference new;
		componentClass: TWBSListCompositionComponent;
		beSorted;
		isJsonSerialized: false;
		yourself