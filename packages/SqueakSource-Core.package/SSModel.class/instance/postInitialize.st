initialization
postInitialize
	" run pluggable initialization hooks "
	
	self runInitializeHooksIn: self class.
	
	^ self