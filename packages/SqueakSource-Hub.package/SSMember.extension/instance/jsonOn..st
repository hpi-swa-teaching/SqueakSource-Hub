*SqueakSource-Hub-printing
jsonOn: aRenderer
	| description |
	description := (self descriptionAdmin,
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
						yourself)).

	description jsonWriter
		write: self
		description: description
		to: aRenderer