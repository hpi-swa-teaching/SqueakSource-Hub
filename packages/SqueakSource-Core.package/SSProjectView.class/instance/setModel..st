initialize-release
setModel: aModel
	super setModel: aModel.
	self initializeAnnouncer.
	self initializeTabPanel