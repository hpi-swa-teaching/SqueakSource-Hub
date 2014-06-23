accessing-descriptions
descriptionDevelopersCanMove

	<magritteDescription>
	^ MASingleOptionDescription new
		selectorAccessor: #developersCanMove;
		label: 'Who can move versions';
		priority: 1100;
		optionsAndLabels: { true -> 'Developers' . false -> 'Administrators' };
		beRequired;
		isJsonSerialized: false;
		yourself