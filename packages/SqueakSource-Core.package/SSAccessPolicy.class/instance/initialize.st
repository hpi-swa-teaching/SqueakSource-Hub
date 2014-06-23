initialization
initialize
	super initialize.
	self developers: Set new.
	self admins: Set new.
	self guests: Set new.	
	self globalRight: self class allowAllRead.
