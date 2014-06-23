initialization
initialize

	super initialize. "Uncommon yet needed for SSModel"
	GRPlatform current
		addToStartUpList: self;
		addToShutDownList: self

	" -- save the current repository -- "
	" self storage saveRepository: self current. "
	
	" -- load the last repository -- "
	" Current := self storage loadRepository. "
	
	" -- clear seaside caches -- "
	" WAAdmin clearSessions
	  Smalltalk garbageCollect. "