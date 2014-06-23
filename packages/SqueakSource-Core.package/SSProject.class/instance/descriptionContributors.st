as yet unclassified
descriptionContributors

	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #developers;
		jsonName: 'contributors';
		jsonWriter: SSJsonWriter;
		beHidden;
		yourself