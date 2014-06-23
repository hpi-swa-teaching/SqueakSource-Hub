conveniance
groups
	^self repository groups select: [ :each | 
		each hasMember: self]