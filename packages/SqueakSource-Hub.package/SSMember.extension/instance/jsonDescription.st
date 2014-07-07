*SqueakSource-Hub-descriptions
jsonDescription
	^ (self descriptionAdmin,
		self descriptionWatching,
		self descriptionLocation,
		self descriptionName2,
		self descriptionWebsite,
		self descriptionPath,
		self descriptionSid,
		self descriptionMcUsername,
		self descriptionCreated,
		(self descriptionLogin
			jsonName: 'username';
			yourself),
		(self descriptionEmail
			jsonName: 'email';
			yourself),
		(self descriptionName
			jsonName: 'fullName';
			yourself),
		(self descriptionPassword
			jsonName: 'password';
			isJsonSerialized: false;
			yourself))

			jsonWriter: SSJsonWriter;
			jsonReader: SSJsonReader;
			yourself