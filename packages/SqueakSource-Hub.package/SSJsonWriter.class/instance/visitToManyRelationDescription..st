visiting-description
visitToManyRelationDescription: aDescription
	(self object collect: [ :each | each id]) jsonOn: self stream