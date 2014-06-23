accessing-descriptions
descriptionMessage

	<magritteDescription>
	^ MAMemoDescription new
		label: 'Message';
		selectorAccessor: #message;
		default: '';
		priority: 150;
		yourself