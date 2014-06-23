instance creation
anonymousMember

	^ AnonymousMember
		ifNil: [ AnonymousMember := self new
			login: String new;
			fullname: String new;
			yourself ]