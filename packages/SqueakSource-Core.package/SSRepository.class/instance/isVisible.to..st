testing
isVisible: aProject to: aUser

	^ self allProjectsVisible
		or: [aProject isMember: aUser allowedTo: SSAccessPolicy read]