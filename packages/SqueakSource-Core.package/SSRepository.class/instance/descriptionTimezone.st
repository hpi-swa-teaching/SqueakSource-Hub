accessing-descriptions
descriptionTimezone

	<magritteDescription>
	^ MAStringDescription  new
		label: 'Timezone';
		selectorAccessor: #timezone;
		priority: 800;
		beRequired;
		yourself