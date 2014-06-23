accessing-descriptions
descriptionBatchSize

	<magritteDescription>
	^ MANumberDescription  new
		label: 'Batch size for table reports';
		selectorAccessor: #batchSize;
		default: 20;
		priority: 450;
		addCondition: [ :each | each > 1 ] "asCondition" labelled: 'Batch size must be greater than 1';
		beRequired;
		yourself