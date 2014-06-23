description
descriptionAdminEmail

	<magritteDescription>
	^ MAStringDescription new
		label: 'Email';
		propertyAccessor: #adminEmail;
		default: 'admin@example.com';
		priority: 600;
		beRequired;
		yourself