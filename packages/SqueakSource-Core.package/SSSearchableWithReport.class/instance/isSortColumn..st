columns
isSortColumn: aMethod

	aMethod pragmas detect: [:p | p keyword = #sortColumn] ifNone: [^ false].
	^ true