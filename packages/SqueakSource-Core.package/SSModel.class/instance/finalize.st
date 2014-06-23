initialization
finalize

	self runFinalizationHooksIn: self class.
	super finalize.
