*SqueakSource-Hub-descriptions
descriptionCreated

	^ MATimeStampDescription new
		accessor: #timestamp;
		jsonName: 'created';
		jsonWriter: SSJsonWriter;
		beReadonly;
		beHidden;
		yourself
