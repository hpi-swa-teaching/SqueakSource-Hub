description
descriptionStorageClass

	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Storage Class';
		propertyAccessor: #storageClass;
		reference: MAClassDescription new;
		options: SSStorage allSubclasses;
		default: SSStorage defaultSubclass;
		priority: 700;
		beRequired;
		yourself