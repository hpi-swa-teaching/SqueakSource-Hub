accessing
id: aString

	id isEmptyOrNil ifFalse: [ self error: 'Cannot redefine id of a project' ].
	id := aString