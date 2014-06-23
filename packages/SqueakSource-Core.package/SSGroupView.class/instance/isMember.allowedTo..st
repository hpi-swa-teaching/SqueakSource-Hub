private
isMember: aMember allowedTo: anAccessSymbol

	" only admins can modify groups "
	^ (anAccessSymbol = #admin) 
		ifTrue: [aMember isSuperUser]
		ifFalse: [super isMember: aMember allowedTo: anAccessSymbol]