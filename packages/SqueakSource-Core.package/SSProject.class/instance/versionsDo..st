accessing-versions
versionsDo: aBlock
	versions do: [ :each |
		each isDeleted ifFalse: [
			aBlock value: each ] ]