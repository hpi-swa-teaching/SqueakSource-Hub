accessing-project
changesUrl: aProject
	
	^ (self latestDiffNameIn: aProject) ifNotNil: [:diffName |
		aProject fullDirectoryUrl
			addToPath: 'changes';
			addToPath: diffName, '.cs']
