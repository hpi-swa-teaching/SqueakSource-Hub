convenience
releases
	^self versions 
		select: [ :each | each isRelease ]