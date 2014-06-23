class initialization
initializeConfigurationRemovedActions

	<initialization>
	self configurationRemovedActions
		add:
			"Remove config"
			[:aProject :aConfigName :aCommiter  | 
				aProject configs removeKey: aConfigName ifAbsent: []];
		yourself
