class initialization
initializeConfigurationAddedActions

	<initialization>
	self configurationAddedActions
		add:
			"Fix potentially wrong configs"
			[:aProject :aMCConfiguration :aCommiter  | 
				aProject fixConfig: aMCConfiguration];
		add:
			"Recod config"
			[:aProject :aMCConfiguration :aCommiter  | 
				aProject configs at: aMCConfiguration fileName put: aMCConfiguration];
		yourself
