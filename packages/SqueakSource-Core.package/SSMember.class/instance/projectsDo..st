conveniance
projectsDo: aBlock
	^self repository projectsDo: [ :each |
		(each hasMember: self) ifTrue: [
			aBlock value: each ] ]