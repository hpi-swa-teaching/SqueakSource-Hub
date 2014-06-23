description
descriptionCacheTimeout

	<magritteDescription>
	^ MANumberDescription new
		label: 'Cache timeout (seconds; affects session length)';
		propertyAccessor: #cacheTimeout;
		default: 600;
		priority: 800;
		yourself