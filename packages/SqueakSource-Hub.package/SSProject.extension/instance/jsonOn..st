*SqueakSource-Hub-printing
jsonOn: aRenderer
	| description |
	description := (self descriptionContributors,
					(self descriptionIdentifier
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
					(self descriptionTitle
						jsonName: 'name';
						yourself),
					self descriptionWebsite,
					self descriptionTagsString,
					self descriptioncommitHook).

	description jsonWriter
		write: self
		description: description
		to: aRenderer