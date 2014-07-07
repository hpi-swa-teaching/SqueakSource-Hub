*SqueakSource-Hub-descriptions
descriptionCreated

	^ MATimeStampDescription new
		accessor: #timestamp;
		jsonName: 'created';
		jsonReader: SSJsonReader;
		jsonWriter: SSJsonWriter;
		beReadonly;
		beHidden;
		yourself
