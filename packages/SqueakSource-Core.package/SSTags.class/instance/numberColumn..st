columns
numberColumn: aColumn

	<columnNamed: '#' priority: 20 >
	
	aColumn 
		accessor: #numberOfProjects;
		sorter: [ :a : b | a numberOfProjects > b numberOfProjects ]