actions
timestampColumn: aColumn

	<columnNamed: 'Created' priority: 100>

	aColumn 
		accessor: #timestamp;
		renderer: [ :each :html |
			| timestamp |
			timestamp := each timestamp.
			html render: (timestamp date yyyymmdd , ' ' , timestamp time print24) ];
		sorter: [ :a :b | a timestamp > b timestamp ]