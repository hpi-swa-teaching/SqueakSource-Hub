accessing-descriptions
descriptionAdmins

	<magritteDescription>
	^ MAMultipleOptionDescription new
		selectorAccessor: #admins;
		label: 'Administrators';
		options: self class defaultParticipants;
		priority: 800;
		reference: SSFullnameReference new;
		componentClass: TWBSListCompositionComponent;
		addCondition: SSYouAreMemberCondition new labelled: 'You can''t remove yourself from the list of administrators';
		beSorted;
		isJsonSerialized: false;
		yourself