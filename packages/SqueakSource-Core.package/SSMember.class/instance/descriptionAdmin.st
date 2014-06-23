accessing-descriptions
descriptionAdmin

	<magritteDescription>
	^ MABooleanDescription new
		accessor: #superuser;
		jsonName: 'admin';
		label: 'Administrator';
		yourself