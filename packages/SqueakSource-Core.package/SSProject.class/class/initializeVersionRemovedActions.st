class initialization
initializeVersionRemovedActions

	<initialization>
	self versionRemovedActions
		add:
			"Mark as Deleted"
			[:aProject :aSSVersion :aVersionName :anAuthor :aRemover  |
				aSSVersion beDeleted];
		yourself