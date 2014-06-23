columns
addColumnsToReport

	self priorizedColumns sorted do: [:assoc | |column|
		column := assoc value.
		self report addColumn: column.
		(column propertyAt: #isSortColumn ifAbsent: [false])
			ifTrue: [self report sortColumn: column]]
