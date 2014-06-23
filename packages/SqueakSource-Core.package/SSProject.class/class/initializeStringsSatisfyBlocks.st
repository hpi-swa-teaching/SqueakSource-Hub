class initialization
initializeStringsSatisfyBlocks
	
	super initializeStringsSatisfyBlocks.
	self stringsSatisfyBlocks addAll: {
		[:aProject :aBlock | aBlock value: aProject title].
		[:aProject :aBlock | aBlock value: aProject information].
		[:aProject :aBlock | aProject tags anySatisfy: [ :any | aBlock value: any name]].
		[:aProject :aBlock | aProject versions anySatisfy: [ :any | aBlock value: any versionInfo name]]
	}.