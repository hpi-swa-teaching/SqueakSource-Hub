accessing-descriptions
descriptionWellKnownName

	<magritteDescription>
	^ MAStringDescription new
		label: 'Well Known Name';
		selectorAccessor: #wellKnownName;
		comment: 'The well known name of the repository, like squeaksource, gemsource etc.';
		priority: 150;
		default: String new;
		yourself