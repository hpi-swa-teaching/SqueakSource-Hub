testing
hasMember: aMember
	^(self isMember: aMember in: self admins)
		or: [ (self isMember: aMember in: self developers)
		or: [ self isMember: aMember in: self guests ] ]
	
