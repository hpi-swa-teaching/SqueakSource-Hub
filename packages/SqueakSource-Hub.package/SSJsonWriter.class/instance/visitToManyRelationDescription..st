as yet unclassified
visitToManyRelationDescription: aDescription
	self stream nextPutAll: (self object collect: [ :each | each id]) asJson.