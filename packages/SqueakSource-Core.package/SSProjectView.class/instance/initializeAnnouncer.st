initialize-release
initializeAnnouncer
	
	self announcer: Announcer new.
	self announcer on: SSProjectViewCallAnnoucement send: #callFromTabContent: to: self.