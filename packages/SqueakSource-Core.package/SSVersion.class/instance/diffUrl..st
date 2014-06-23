accessing-project
diffUrl: aProject

	^ aProject fullDirectoryUrl addToPath: (self versionInfo name, '.diff')