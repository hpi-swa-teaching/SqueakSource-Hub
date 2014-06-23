columns
actionsColumn: aColumn
	
	<columnNamed: 'Actions' priority: 40 >
	
	aColumn
		accessor: #yourself;
		sorter: nil.

	self session isSuperUser 
		ifFalse: [aColumn renderer: [ :each :html | ]]
		ifTrue: [aColumn renderer: [ :each :html | 
			html anchor
				callback: [ self renameTag: each ];
				with: 'rename'.
			html space.
			html anchor
				callback: [ self deleteTag: each ];
				with: 'delete' ]].
