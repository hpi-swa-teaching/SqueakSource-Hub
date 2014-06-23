class initialization
initializeVersionAddedActions

	<initialization>
	self versionAddedActions
		add: 
			"Disallow duplicate versions"
			[:aProject :aSSVersion :aVersionName :anAuthor :aCommiter  :aByteArray | 
				 (aProject includesVersionAt: aVersionName)
					ifTrue: [SSVersionAlreadyExists signal: aVersionName]];
		add: 
			"Store version"
			[:aProject :aSSVersion :aVersionName :anAuthor :aCommiter  :aByteArray | 
				SSRepository storage saveMonticello: aByteArray of: aSSVersion to: aProject];
		add:
			"Record version in project"
			[:aProject :aSSVersion :aVersionName :anAuthor :aCommiter  :aByteArray | 
				aProject addVersion: aSSVersion];
		yourself.
