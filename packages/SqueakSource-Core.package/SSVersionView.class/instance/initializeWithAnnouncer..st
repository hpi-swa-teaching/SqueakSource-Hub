initialize-release
initializeWithAnnouncer: anAnnouncer 

	super initializeWithAnnouncer: anAnnouncer.
	self announcer on: SSVersionViewCallAnnoucement send: #callFromFilename: to: self