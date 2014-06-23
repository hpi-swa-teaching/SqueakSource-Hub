testing
isNotInFavorites
	"note: is _not_  the same as 'self isInFavorites not' with respect to users."
	
	^ self user notAnonymous and: [(self user includesFavorite: self model) not]