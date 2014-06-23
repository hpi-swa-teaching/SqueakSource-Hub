columns
projectColumn: aColumn

	<columnNamed: 'Project' priority: 10>
	<sortColumn>
	
	aColumn renderer: [ :each :html |
		html anchor
			extraPath: each relativeHomepageUrl;
			callback: [ self call: (each view searchText: searchText) ];
			with: each title ]