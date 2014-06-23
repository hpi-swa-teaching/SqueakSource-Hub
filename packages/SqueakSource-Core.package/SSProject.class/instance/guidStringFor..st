convenience
guidStringFor: aVersion

	^ (self fullDirectoryUrl  
		scheme: 'mcz';
		addToPath: aVersion versionInfo id greaseString) greaseString
