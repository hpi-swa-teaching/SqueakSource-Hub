accessing-descriptions
descriptionDefaultMoveTarget

	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #defaultMoveTarget;
		label: 'Default move target';
		options: self visibleProjectsForDescription;
		priority: 1000;
		beSorted;
		isJsonSerialized: false;
		yourself