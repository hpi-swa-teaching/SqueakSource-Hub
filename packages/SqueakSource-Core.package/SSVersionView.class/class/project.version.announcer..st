instance creation
project: aProject version: aVersion announcer: anAnnouncer
	^self 
		model: (Array 
			with: aProject 
			with: aVersion)
		announcer: anAnnouncer 