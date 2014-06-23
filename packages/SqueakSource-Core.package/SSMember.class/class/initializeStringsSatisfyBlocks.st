class initialization
initializeStringsSatisfyBlocks

	super initializeStringsSatisfyBlocks.
	self stringsSatisfyBlocks addAll: {
		[:aMember :aBlock | aBlock value: aMember fullname].
		[:aMember :aBlock | aBlock value: aMember login]
	}.