*SqueakSource-Hub-descriptions
descriptionContributors

	^ MAToManyRelationDescription new
		accessor: #developers;
		jsonName: 'contributors';
		jsonWriter: SSJsonWriter;
		useJsonKey: true;
		ownedIn: [SSRepository current members];
		beReadonly;
		beHidden;
		yourself
