*SqueakSource-Hub-descriptions
descriptionDate
	^ MATimeStampDescription new
		accessor: #timestamp;
		jsonName: 'date';
		jsonReader: SSJsonReader;
		jsonWriter: SSJsonWriter;
		beReadonly;
		beHidden;
		yourself
