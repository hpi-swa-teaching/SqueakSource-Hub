description
descriptionRepositoryTitle

	<magritteDescription>
	^ MAStringDescription new
		label: 'Repository Title';
		propertyAccessor: #repositoryTitle;
		default: 'SqueakSource3';
		priority: 200;
		beRequired;
		yourself