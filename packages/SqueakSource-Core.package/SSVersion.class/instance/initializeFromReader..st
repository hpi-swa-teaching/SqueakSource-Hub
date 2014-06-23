initialization
initializeFromReader: aReader
	
	dependencies := aReader dependencies
		collect: [ :each | each versionInfo clearAncestors ].
	(versionInfo := aReader info) ancestors
		do: [ :each | each clearAncestors ].
	self initialize.
	self 
		package: (aReader package name);
		packageName; 
		packageVersion;
		fileName;
		versionInfoName;
		setTimestampFromVersionInfo.