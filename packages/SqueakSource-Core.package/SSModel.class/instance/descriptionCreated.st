accessing-descriptions
descriptionCreated

	<magritteDescription>
	^ MATimeStampDescription new
		accessor: #timestamp;
		jsonName: 'created';
		jsonWriter: SSJsonWriter;
		beReadonly;
		beHidden;
		yourself