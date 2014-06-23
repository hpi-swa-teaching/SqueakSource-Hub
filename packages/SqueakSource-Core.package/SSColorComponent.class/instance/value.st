accessing
value
	^ super value ifNil: [ self description kind transparent ]