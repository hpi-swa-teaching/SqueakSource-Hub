convenience
hasReleases
	^self versions 
		anySatisfy: [ :each | each isRelease ]