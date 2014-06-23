accessing-projects
removeProject: aProject
	self membersDo: [:aUser | aUser removeFavorite: aProject ].
	projects removeKey: aProject id.
