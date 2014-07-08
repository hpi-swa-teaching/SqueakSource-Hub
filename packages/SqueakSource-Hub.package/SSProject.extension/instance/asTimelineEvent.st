*SqueakSource-Hub-json
asTimelineEvent
	^ Dictionary new
		at: 'type' put: 'project';
		at: 'projectId' put: self id ;
		at: 'title' put: 'created project';
		at: 'project' put: (self creator login , '/' , self id);
		at: 'description' put: self information;
		at: 'email' put: self creator email;
		at: 'created' put: self timestamp asSeconds;
		at: 'sid' put: self id;
		at: 'username' put: self creator name;
		at: 'timestamp' put: self timestamp asSeconds;
		yourself