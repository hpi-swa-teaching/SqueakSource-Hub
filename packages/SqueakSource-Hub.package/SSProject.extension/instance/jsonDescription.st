*SqueakSource-Hub-descriptions
jsonDescription
	^ ((self descriptionContributors
			useJsonKey;
			yourself),
		(self descriptionSid
			jsonName: 'sid';
			yourself),			
		(self descriptionInformation
			jsonName: 'projectDescription';
			yourself),
		self descriptionLicenseJson,
		self descriptionCreated,
		self descriptionOwner,
		self descriptionPath,
		self descriptionPublic,
		self descriptionPublicWrite,
		(self descriptionIdentifier
			jsonName: 'name';
			jsonReader: SSJsonReader;
			beReadonly;
			yourself),
		self descriptionWebsite,
		self descriptionTagsString,
		self descriptionCommitHook)
			
		jsonWriter: SSJsonWriter;
		yourself