class initialization
registerAll
	self register.
	self subclassesDo: [:class | class registerAll].