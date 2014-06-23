accessing-descriptions
descriptionFavorites

	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'favorites';
		jsonName: 'watching';
		jsonWriter: SSJsonWriter;
		selectorAccessor: #favorites;
		beHidden;
		yourself