accessing-magritte-specific
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: TWBSMagritteFormRenderer;
		isJsonSerialized: false;
		yourself