configuration
homeClasses
	^Array streamContents: [ :stream |
		stream
			nextPut: self homeClass;
			nextPut: self projectsClass;
			nextPut: self tagsClass;
			nextPut: self membersClass;
			nextPut: self groupsClass;
			nextPut: self helpClass;
			nextPut: self aboutClass;
			nextPut: self loginClass ]
		