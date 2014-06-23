accessing
addFavorite: aProject

		((self includesFavorite: aProject) not
	and: [(self projects includes: aProject) not])
				ifTrue: [ self favorites add: aProject ]