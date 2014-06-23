description
descriptionAdminLogin

	<magritteDescription>
	^ MAStringDescription new
		label: 'Administrator Login';
		propertyAccessor: #adminLogin;
		default: 'adm';
		priority: 400;
		beRequired;
		yourself