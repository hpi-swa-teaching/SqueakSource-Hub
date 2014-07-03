*SqueakSource-Hub-descriptions
jsonDescription
	^ ((self descriptionIdentifier
			jsonName: 'sid';
			yourself),
		(self descriptionName
			jsonName: 'name';
			yourself),
		self descriptionCreated,
		(self descriptionMembers
			jsonName: 'users';
			jsonWriter: SSJsonWriter;
			useJsonKey: true;
			yourself),
		self descriptionPath)
			
			jsonWriter: SSJsonWriter;
			yourself