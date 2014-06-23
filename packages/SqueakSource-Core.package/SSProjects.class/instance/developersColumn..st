columns
developersColumn: aColumn

	<columnNamed: 'Developers' priority: 30>
	
	aColumn 
		accessor: #developers;
		renderer: (self renderMemberBlockFor: #developers);
		sorter: nil.