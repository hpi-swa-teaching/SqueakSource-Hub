conveniance
projects
	^Array streamContents: [ :stream |
		self projectsDo: [ :each |
			stream nextPut: each ] ]