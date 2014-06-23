actions
addToFavorites
	<actionNamed: 'Favorite' priority: 100 condition: #isNotInFavorites>
	<icon: 'heart'>
	
	self user addFavorite: self model.
	self saveSession.