class initialization
initialize
	" run pluggable initialization hooks "
	
	self runInitializeHooksIn: self class.
	
	^ self