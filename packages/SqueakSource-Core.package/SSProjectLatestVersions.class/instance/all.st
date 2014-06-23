private
all

	^ (self model latestVersionsAs: self user) select: [:each |
		self model 
			isMember: self user 
			allowedTo: SSAccessPolicy read
			for: each]