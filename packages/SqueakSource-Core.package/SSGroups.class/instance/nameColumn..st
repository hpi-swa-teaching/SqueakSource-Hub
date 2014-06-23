columns
nameColumn: aColumn

	<columnNamed: 'Name' priority: 10 >
	<sortColumn>
	
	aColumn 
		accessor: #fullname;
		renderer: [ :each :html | 
			html anchor
				callback: [ self call: each view ];
				with: each fullname ];
		sorter: [ :a :b |
			a fullname caseInsensitiveLessOrEqual: b fullname ]