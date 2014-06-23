accessing
package
	^ self
		propertyAt: self class packageProperty
		ifAbsent: [ self packageName ]