private
confirmDelete: aCollection
	"decoration := SSVersionListingDecoration
		version: self version
		versions: aCollection."
	^ self call: (WAYesOrNoDialog new
		addDecoration: (SSVersionListingDecoration
		actionName: 'delete all versions'
		version: self version
		versions: aCollection);
		yourself)