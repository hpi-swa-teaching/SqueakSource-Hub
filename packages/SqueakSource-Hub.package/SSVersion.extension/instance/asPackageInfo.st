*SqueakSource-Hub
asPackageInfo
	^ Dictionary new
		at: 'package' put: self packageName;
		at: 'id' put: '',self id;
		at: 'sid' put: self versionInfo name;
		at: 'name' put: self versionInfo name;
		at: 'filename' put: self fileName;
		at: 'message' put: self message;
		at: 'author' put: self author login;
		at: 'dateAndTime' put: self versionInfo dateAndTime asSeconds;
		at: 'time' put: self versionInfo timeStamp asSeconds;
		at: 'date' put: self versionInfo timeStamp asSeconds;
		at: 'created' put: self timestamp asSeconds;
		yourself