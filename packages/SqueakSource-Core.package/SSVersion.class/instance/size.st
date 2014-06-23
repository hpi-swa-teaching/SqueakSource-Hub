accessing
size
	^ self
		propertyAt: self class sizeProperty
		ifAbsent: [ 0 ]