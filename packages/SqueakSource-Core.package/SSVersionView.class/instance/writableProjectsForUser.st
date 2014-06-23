accessing
writableProjectsForUser

	^(self repository visibleProjectsTo: self user select: [ :each |
		self project ~= each
			and: [ each isMember: self user allowedTo: SSAccessPolicy write ] ])
				asSortedCollection: [ :x :y | x name <= y name ]