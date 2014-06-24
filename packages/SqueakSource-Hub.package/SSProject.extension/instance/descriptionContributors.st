*SqueakSource-Hub-descriptions
descriptionContributors

	^ MAToManyRelationDescription new
		accessor: #developers;
		jsonName: 'contributors';
		jsonWriter: SSJsonWriter;
		beHidden;
		yourself
