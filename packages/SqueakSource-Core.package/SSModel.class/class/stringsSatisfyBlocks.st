accessing
stringsSatisfyBlocks

	^ stringsSatisfyBlocks ifNil: [self initializeStringsSatisfyBlocks. stringsSatisfyBlocks]