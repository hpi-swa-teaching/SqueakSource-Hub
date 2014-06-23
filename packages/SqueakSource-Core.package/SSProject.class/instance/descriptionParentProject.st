accessing-descriptions
descriptionParentProject

	<magritteDescription>	
	^ MASingleOptionDescription new
		accessor: #parentProject;
		label: 'Parent Project';
		options: self visibleProjectsForDescription;
		priority: 1000;
		beSorted;
		isJsonSerialized: false;
		yourself