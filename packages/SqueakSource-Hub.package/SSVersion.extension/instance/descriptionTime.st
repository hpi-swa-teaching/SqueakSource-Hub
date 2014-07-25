*SqueakSource-Hub-descriptions
descriptionTime
	^ MATimeStampDescription new
		accessor: #timestamp;
		jsonName: 'time';
		jsonReader: SSJsonReader;
		jsonWriter: SSJsonWriter;
		beReadonly;
		beHidden;
		yourself
