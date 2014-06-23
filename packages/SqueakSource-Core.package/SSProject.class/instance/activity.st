convenience
activity
	| activity |
	activity := 0.0.
	self versionsDo: [ :each |
		activity := activity + each activity ].
	^activity