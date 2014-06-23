private
confirmDeleteDependents: aCollection
	"decoration := SSVersionListingDecoration
		version: self version
		versions: aCollection."
	^ self call: (WAYesOrNoDialog new
		addDecoration: (SSVersionListingDecoration
		actionName: 'delete dependents'
		version: self version
		versions: aCollection);
		yourself)