accessing
size: anInteger
	^ self
		propertyAt: self class sizeProperty
		put: anInteger