testing
stringsSatisfy: strBlock

	^ self class stringsSatisfyBlocks
		anySatisfy: [:aBlock | aBlock value: self value: strBlock]
