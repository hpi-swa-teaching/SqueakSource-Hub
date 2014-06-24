*SqueakSource-Hub-descriptions
descriptionWatching
	^ MAToManyRelationDescription new
		accessor: #favorites;
		jsonName: 'watching';
		jsonWriter: SSJsonWriter;
		beHidden;
		yourself