accessing-settings
password
	^default 
		propertyAt: SSVersion smPasswordProperty
		ifAbsent: [ nil ]