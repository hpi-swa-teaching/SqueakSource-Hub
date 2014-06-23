description
descriptionAdminPassword

	<magritteDescription>
	| default |
	default := 'seaside'.
	^ MAPasswordDescription new
		label: 'Password (default: ', default, ')';
		propertyAccessor: #adminPassword;
		default: default;
		priority: 500;
		beRequired;
		yourself