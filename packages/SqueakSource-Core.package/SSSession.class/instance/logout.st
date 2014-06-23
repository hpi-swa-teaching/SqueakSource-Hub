actions
logout
	self description.
	user := nil.
	self requestContext redirectTo: self application url