*SqueakSource-Hub-descriptions
descriptionOwner

	^ MAToOneRelationDescription new
		accessor: #creator;
		jsonName: 'owner';
		useJsonKey: true;
		ownedIn: [SSRepository current members];
		beHidden;
		yourself
