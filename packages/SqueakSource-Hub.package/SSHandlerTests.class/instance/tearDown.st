running
tearDown
	super tearDown.
	SSRepository setRepository: savedRepository storage: savedStorage.
