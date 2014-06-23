accessing-settings
package
	^default 
		propertyAt: SSVersion smPackageProperty
		ifAbsent: [ nil ]