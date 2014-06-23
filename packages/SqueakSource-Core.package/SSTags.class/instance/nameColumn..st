columns
nameColumn: aColumn

	<columnNamed: 'Name' priority: 10 >
	<sortColumn>
	aColumn 
		accessor: #yourself;
		renderer: [ :each :html | 
			html anchor
					callback: [ self displayProjectsWithTag: each ];
					with: each name ]