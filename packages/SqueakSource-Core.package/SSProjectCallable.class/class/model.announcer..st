as yet unclassified
model: anObject announcer: anAnnouncer
	^ (self model: anObject)
		initializeWithAnnouncer: anAnnouncer;
		yourself