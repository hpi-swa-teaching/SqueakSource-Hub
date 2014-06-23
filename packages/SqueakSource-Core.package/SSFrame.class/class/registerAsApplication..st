registration
registerAsApplication: aString

	^ (WAAdmin 
		register: self
		asApplicationAt: aString)
			preferenceAt: #sessionClass put: SSSession;
			preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
			addLibrary: JQDeploymentLibrary;
			addLibrary: TWBSFADeploymentLibrary;
			addLibrary: SSFileLibrary;
			addFilterFirst: SSUrlFilter new;
			yourself