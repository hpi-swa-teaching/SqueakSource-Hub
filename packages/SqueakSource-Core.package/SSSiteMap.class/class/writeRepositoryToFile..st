convenience
writeRepositoryToFile: repo

	self doInRequest: [
		GRPlatform current
			write: (self for: repo user: SSMember anonymousMember) renderedContent
			toFile: self fileName
			inFolder: ''].