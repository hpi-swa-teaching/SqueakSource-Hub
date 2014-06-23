accessing-settings
allowRegisterProject
	^self propertyAt: #allowRegisterProject
		ifAbsent: [true]