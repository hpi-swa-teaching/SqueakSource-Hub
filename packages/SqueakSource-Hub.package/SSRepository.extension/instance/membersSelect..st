*SqueakSource-Hub
membersSelect: aBlock
	^Array streamContents: [ :stream |
		self membersDo: [ :each |
			(aBlock value: each) ifTrue: [
				stream nextPut: each ] ] ]