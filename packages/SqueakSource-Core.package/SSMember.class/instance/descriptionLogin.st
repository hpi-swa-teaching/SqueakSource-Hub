accessing-descriptions
descriptionLogin

	<magritteDescription>
	self flag: #topa. "I consider initials historic"
	
	^ MAStringDescription new
		label: 'Login';
		jsonName: 'username';
		selectorAccessor: #login;
		addCondition: SSUniqueMemberLoginCondition new labelled: 'This login already exist';
		priority: 200;
		beRequired;
		yourself