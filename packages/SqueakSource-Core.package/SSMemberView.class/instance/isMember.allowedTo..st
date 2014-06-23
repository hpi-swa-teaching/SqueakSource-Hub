private
isMember: aMember allowedTo: anAccessSymbol

	" only admins or the same member can modify a member "
	^ (anAccessSymbol = #self) 
		ifTrue: [aMember = self model or: [aMember isSuperUser]]
		ifFalse: [super isMember: aMember allowedTo: anAccessSymbol]
	