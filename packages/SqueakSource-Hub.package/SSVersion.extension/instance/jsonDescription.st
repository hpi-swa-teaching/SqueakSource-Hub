*SqueakSource-Hub
jsonDescription
	^ (  self descriptionAncestors,
		self descriptionPackage,
		self descriptionIdentifier,
		self descriptionSid,			
		self descriptionName,
		self descriptionFileName,
		self descriptionMessage,
		self descriptionAuthor,
		self descriptionDateAndTime,
		self descriptionDate,
		self descriptionTime,
		self descriptionCreated)
			
		jsonWriter: SSJsonWriter;
		yourself