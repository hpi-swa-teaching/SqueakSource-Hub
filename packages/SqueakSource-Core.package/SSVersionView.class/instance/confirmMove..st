private
confirmMove: aCollection

	^ self call: (WAYesOrNoDialog new
		addDecoration: (SSVersionListingDecoration
		actionName: 'move'
		version: self version
		versions: aCollection);
		yourself)