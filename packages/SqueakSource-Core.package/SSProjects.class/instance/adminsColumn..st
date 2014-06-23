columns
adminsColumn: aColumn

	<columnNamed: 'Admins' priority: 20>
	
	aColumn accessor: #admins;
		renderer: (self renderMemberBlockFor: #admins);
		sorter: nil