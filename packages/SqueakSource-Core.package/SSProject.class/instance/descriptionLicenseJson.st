accessing-descriptions
descriptionLicenseJson

	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #licenseJson;
		label: 'License';
		jsonName: 'license';
		beRequired;
		yourself