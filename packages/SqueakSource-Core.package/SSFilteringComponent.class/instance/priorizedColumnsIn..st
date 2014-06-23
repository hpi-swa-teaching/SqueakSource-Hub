columns
priorizedColumnsIn: aClass

	" overridden to not inherit versions-specific stuff "
	aClass ifNil: [^ #()].

	^ Array streamContents: [ :stream | 

		"look for columns in superclasses"
		(aClass name asString = 'SSFilteringComponent') 
			ifFalse: [stream nextPutAll: (self priorizedColumnsIn: aClass superclass)].

		(Pragma allNamed: #columnNamed:priority:  in: aClass) 
			do: [:pragma | | column |
				column := MAColumn new label: (pragma argumentAt: 1).
				self perform: pragma selector with: column.
				(self isSortColumn: pragma method)
					ifTrue: [column propertyAt: #isSortColumn put: true].
				stream nextPut: (pragma argumentAt: 2) -> column]].


		
