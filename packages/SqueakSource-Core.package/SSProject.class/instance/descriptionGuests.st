accessing-descriptions
descriptionGuests

	<magritteDescription>
	^ MAMultipleOptionDescription new
		selectorAccessor: #guests;
		label: 'Guests';
		priority: 1000;
		options: self class defaultParticipants;
		reference: SSFullnameReference new;
		componentClass: TWBSListCompositionComponent;
		beSorted;
		isJsonSerialized: false;
		yourself