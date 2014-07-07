*SqueakSource-Hub-json
asTimelineEvent
	| dict |
	dict := Dictionary new.
	dict 
		at: 'type' put: 'project';
		at: 'projectId' put: self name ;
		at: 'title' put: self title;
		at: 'project' put: (self creator name , '/' , self name);
		at: 'description ' put: self information;
		at: 'email' put: self creator email;
		at: 'created' put: self timestamp asSeconds;
		at: 'sid' put: self name;
		at: 'username' put: self creator name;
		at: 'timestamp' put: self timestamp asSeconds.
	^ dict