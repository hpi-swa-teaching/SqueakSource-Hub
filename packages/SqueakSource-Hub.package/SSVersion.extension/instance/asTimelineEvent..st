*SqueakSource-Hub
asTimelineEvent: aProject
	^ Dictionary new
		at: 'type' put: 'commit';
		at: 'projectId' put: aProject name;
		at: 'versionName' put: self versionInfo name;
		at: 'title' put: 'commited to';
		at: 'project' put: aProject creator login, '/', aProject id;
		at: 'description ' put: self message;
		at: 'email' put: self author email;
		at: 'created' put: self timestamp asSeconds;
		at: 'sid' put: self versionInfo name;
		at: 'username' put: self author login;
		at: 'timestamp' put: self timestamp asSeconds;
		yourself