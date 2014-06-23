accessing-descriptions
descriptionGoogleAnalysticsAccount

	<magritteDescription>
	^ MAStringDescription  new
		label: 'Google Analytics Account';
		selectorAccessor: #googleAnalyticsAccount;
		default: '';
		priority: 900;
		yourself