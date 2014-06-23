columns
guestsColumn: aColumn

	<columnNamed: 'Guests' priority: 40>
	
	aColumn 
		accessor: #guests;
		renderer: (self renderMemberBlockFor: #guests);
		sorter: nil.