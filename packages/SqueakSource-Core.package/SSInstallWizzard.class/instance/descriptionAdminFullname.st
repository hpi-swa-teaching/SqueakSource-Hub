description
descriptionAdminFullname

	<magritteDescription>
	^ MAStringDescription new
		label: 'Administrator (full name)';
		propertyAccessor: #adminFullname;
		default: 'Administrator';
		priority: 300;
		beRequired;
		yourself