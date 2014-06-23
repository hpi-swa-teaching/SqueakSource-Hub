accessing-settings
username
	^default 
		propertyAt: SSVersion smUsernameProperty
		ifAbsent: [ nil ]