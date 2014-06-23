columns
actionsColumn: aColumn

	<columnNamed: 'Actions' priority: 40>

	aColumn 
		accessor: #yourself;
		renderer: [ :each :html | 
			html anchor
				callback: [ self callOnParent: (SSVersionView 
					project: self model 
					version: each
					announcer: self announcer) ];
				with: 'details'.
			html space.
			html anchor
				url: (each url: self model);
				with: 'download' ];
		sorter: nil