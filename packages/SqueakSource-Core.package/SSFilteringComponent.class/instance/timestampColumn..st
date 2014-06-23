columns
timestampColumn: aColumn

	<columnNamed: 'Uploaded' priority: 30>
	<sortColumn>

	aColumn 
		accessor: #timestamp;
		renderer: [ :each :html |
			| timestamp |
			timestamp := each timestamp.
			html render: (timestamp date yyyymmdd , ' ' , timestamp time print24) ];
		sorter: [ :a :b | a timestamp > b timestamp ]