columns
membersColumn: aColumn

	<columnNamed: 'Members' priority: 30 >
	
	aColumn 
		accessor: #members;
		renderer: (self renderMemberBlockFor: #members);
		sorter: nil