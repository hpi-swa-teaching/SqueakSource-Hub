description
descriptionWellKnownName

	<magritteDescription>
	^ MAStringDescription new
		label: 'Well Known Name';
		propertyAccessor: #wellKnownName;
		comment: 'The well known name of the repository, like squeaksource, gemsource etc.';
		priority: 150;
		default: '';
		yourself