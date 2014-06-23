testing
canCleanup

	^ (self model isMember: self session user allowedTo: SSAccessPolicy move)
			and: [self project parentProject notNil and: [self project defaultMoveTarget notNil]]
