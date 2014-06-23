testing
isInFavorites

	^ self user notAnonymous and: [self user includesFavorite: self model]