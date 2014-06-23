sorting
sort: aColumn

	" note, equality does not fit here, as 
	we need to know whether the columns are actually
	different, as opposed to only their species, which is
	implied by MAObject>>#="
	aColumn == self sortColumn
		ifTrue: [	self sortReversed: self sortReversed not ]
		ifFalse: [ self sortColumn: aColumn; sortReversed: false ].
	self refresh

				