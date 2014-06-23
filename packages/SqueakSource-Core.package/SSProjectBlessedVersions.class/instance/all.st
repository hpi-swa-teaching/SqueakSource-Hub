private
all

	^ self model allBlessedVersions
		select: [ :each |
			each notNil
				and: [
					self model 
						isMember: self user 
						allowedTo: SSAccessPolicy read
						for: each ] ]