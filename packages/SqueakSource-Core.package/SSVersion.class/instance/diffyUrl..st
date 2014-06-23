accessing-project
diffyUrl: aProject
	
	^ (self latestDiffNameIn: aProject) ifNotNil: [:diffName |
		aProject fullDirectoryUrl
			addToPath: diffName, '.', MCMcdReader extension]
