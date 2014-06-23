accessing-descriptions
descriptionPassword

	<magritteDescription>
	^ MAPasswordDescription new
		label: 'Password';
		isJsonSerialized: false;
		selectorAccessor: #password;
		addCondition: (self class defaultLengthAtLeast: 4) labelled: 'Password must have at least 4 characters';
		priority: 300;
		componentClass: TWBSVerifiedPasswordComponent;
		placeholder: 'password';	
		beRequired;
		yourself