accessing
favorites 

	^ favorites ifNil: [favorites := OrderedCollection new]
