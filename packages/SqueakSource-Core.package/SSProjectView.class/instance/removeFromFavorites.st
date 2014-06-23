actions
removeFromFavorites
	<actionNamed: 'Un-favorite' priority: 100 condition: #isInFavorites>
	<icon: 'heart-empty'>
	
	self user removeFavorite: self model.
	self saveSession