convenience
registerSqueakMap: aProject
	"Copyied from MCSMReleaseRepository>>releaseVersion:url: and slightly modified. This message returns an error string in case of any problem, else nil is returned."

	| result |
	result := HTTPSocket
		httpPost: self squeakMapUrl, '/packagebyname/' , (self propertyAt: self class smPackageProperty) , '/newrelease'
		args: {
			'version' -> { (self versionInfo name copyAfter: $.) extractNumber asString }.
			'note' -> { self propertyAt: self class smVersionCommentProperty }.
			'downloadURL' -> { self url: aProject } }
		user: (self propertyAt: self class smUsernameProperty)
		passwd: (self propertyAt: self class smPasswordProperty).
	^result contents size > 4 
		ifTrue: [ result contents ]
		ifFalse: [ nil ]