*SqueakSource-Hub-descriptions
descriptionDateAndTime 
	^ MATimeStampDescription new
		accessor: #timestamp;
		jsonName: 'dateAndTime';
		jsonReader: SSJsonReader;
		jsonWriter: SSJsonWriter;
		beReadonly;
		beHidden;
		yourself
