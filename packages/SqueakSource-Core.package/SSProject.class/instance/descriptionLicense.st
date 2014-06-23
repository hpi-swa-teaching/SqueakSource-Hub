accessing-descriptions
descriptionLicense

	<magritteDescription>
	^ MASingleOptionDescription new
		selectorAccessor: #license;
		label: 'License';
		priority: 500;
		optionsAndLabels: self class defaultLicenses;
		beRequired;
		isJsonSerialized: false;
		yourself