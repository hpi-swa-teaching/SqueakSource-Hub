instance creation
model: anObject announcer: anAnnouncer searchTerm: aString
	^ (self model: anObject announcer: anAnnouncer)
		searchText: aString;
		resetReport;
		yourself