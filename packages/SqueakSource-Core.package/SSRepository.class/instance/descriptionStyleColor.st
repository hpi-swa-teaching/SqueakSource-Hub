accessing-descriptions
descriptionStyleColor

	<magritteDescription>
	^ MAColorDescription  new
		label: 'Style color';
		selectorAccessor: #styleColor;
		componentClass: SSColorComponent;
		default: Color blue;
		priority: 500;
		addCondition: [ :each | each ~= Color white ] "asCondition" labelled: 'Color must not be white';
		yourself