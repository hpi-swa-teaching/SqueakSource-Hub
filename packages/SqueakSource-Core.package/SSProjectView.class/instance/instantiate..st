private
instantiate: aClass
	^aClass
		model: self model
		announcer: self announcer
		searchTerm: self searchText