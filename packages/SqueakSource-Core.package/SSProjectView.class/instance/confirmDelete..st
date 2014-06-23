actions
confirmDelete: aConfiguration
	^ self call: (WAYesOrNoDialog new
		addDecoration: (SSConfirmConfigurationDeleteDecoration configuration: aConfiguration);
		yourself)
	