accessing-descriptions
descriptionGlobalRight

	<magritteDescription>
	^ MASingleOptionDescription new
		selectorAccessor: #globalRight;
		label: 'Global Right';
		priority: 700;
		optionsAndLabels: self class defaultGlobalRights;
		beRequired;
		isJsonSerialized: false;
		yourself