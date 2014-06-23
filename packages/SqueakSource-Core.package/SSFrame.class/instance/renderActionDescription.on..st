rendering
renderActionDescription: description on: html
	" Print the description as text.
	If the description is an associoation, its key is treated as symbol-description."
	

	(description respondsTo: #key)
		ifTrue: [html twbsIcon: description key; space].
	html text: description value.
