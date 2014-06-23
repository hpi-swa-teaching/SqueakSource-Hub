class initialization
initializeStringsSatisfyBlocks

	super initializeStringsSatisfyBlocks.
	self stringsSatisfyBlocks addAll: {
		[:aVersion :aBlock | aBlock value: aVersion versionInfo name].
		[:aVersion :aBlock | aBlock value: aVersion versionInfo message].
		[:aVersion :aBlock | aVersion author notNil and: [ aVersion author stringsSatisfy: aBlock ]]
	}.
