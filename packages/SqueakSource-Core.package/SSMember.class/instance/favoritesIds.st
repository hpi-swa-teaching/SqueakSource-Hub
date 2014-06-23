accessing
favoritesIds

	^ self favorites collect: [ :each | each id ]
