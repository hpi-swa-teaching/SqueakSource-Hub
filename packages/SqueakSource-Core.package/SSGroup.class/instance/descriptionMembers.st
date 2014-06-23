accessing-descriptions
descriptionMembers

	<magritteDescription>
	| defaultMembers |
	defaultMembers := self repository ifNotNil: [:r | r members] ifNil: [{}].

	^ MAMultipleOptionDescription new
		selectorAccessor: #members;
		options: defaultMembers;
		reference: SSFullnameReference new;
		componentClass: TWBSListCompositionComponent;
		label: 'Members';
		priority: 300;
		beSorted;
		beDistinct;
		yourself