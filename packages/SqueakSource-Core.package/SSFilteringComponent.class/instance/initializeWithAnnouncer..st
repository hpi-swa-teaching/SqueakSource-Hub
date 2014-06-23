initialize-release
initializeWithAnnouncer: anAnnouncer
	super initializeWithAnnouncer: anAnnouncer.
	self announcer on: SSSearchAnnoucement send: #search: to: self