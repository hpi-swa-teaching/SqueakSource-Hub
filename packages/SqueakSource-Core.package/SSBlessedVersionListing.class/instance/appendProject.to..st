initialization
appendProject: aProject to: aStream
	
	self repository blessingsEnabled 
		ifTrue: [super appendProject: aProject to: aStream].