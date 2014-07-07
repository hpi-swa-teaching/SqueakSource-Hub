*SqueakSource-Hub
asTimelineEvent
	| dict |
	dict := Dictionary new.
	dict 
		at: 'type' put: 'commit';
		"at: 'projectId' put: self versionInfo name;"
		at: 'versionName' put: self versionInfo name;
		at: 'title' put: 'commited to';
		"at: 'project' put: (self versionInfo name , '/' , self versionInfo name);"
		at: 'description ' put: self message;
		at: 'email' put: self author email;
		at: 'created' put: self timestamp asSeconds;
		at: 'sid' put: self versionInfo name;
		at: 'username' put: self author name;
		at: 'timestamp' put: self timestamp asSeconds.
	^ dict