class-initialization
register
	"self register"

	^(WAAdmin 
		register: self
		asApplicationAt: self applicationName)
			preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
			addLibrary: JQDeploymentLibrary;
			addLibrary: TWBSFADeploymentLibrary;
			yourself