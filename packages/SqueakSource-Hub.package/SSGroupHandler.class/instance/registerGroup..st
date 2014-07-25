request-handling
registerGroup: id
	<post>
	<path: '/{id}'>
	<consumes: '*/json'>
	<produces: 'text/plain'>
	
	| member group |
	member := self currentMemberOrRespondInvalid.
	(SSRepository current isUniqueGroupId: id) ifFalse: [^'Name already taken.'].
	group := SSGroup new
					id: id;
					fullname: id;
					members: (Set with: member).
	group fromJson: self requestContext request rawBody.
	SSRepository current addGroup: group.
	^'ok'