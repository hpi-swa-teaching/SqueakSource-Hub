accessing
idAndIMeanIt: aString

	" this is for administrative tasks only. don't use it unless you know 
	what you're doing. IDs are rarely meant to change"
	self flag: #dangerous.
	id := aString.