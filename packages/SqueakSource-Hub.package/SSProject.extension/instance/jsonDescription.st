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
		self descriptionPath,
		self descriptionPublic,
		self descriptionPublicWrite,
		(self descriptionIdentifier
			jsonName: 'name';
			yourself),
		self descriptionWebsite,
		self descriptionTagsString,
		self descriptionCommitHook)
			
		jsonWriter: SSJsonWriter;
		yourself