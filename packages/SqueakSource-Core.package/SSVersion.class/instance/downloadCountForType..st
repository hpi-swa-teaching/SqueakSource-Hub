accessing-statistics
downloadCountForType: aSymbol
	^self downloadStatistics 
		at: aSymbol 
		ifAbsent: [ 
			self downloadStatistics 
				at: aSymbol 
				put: GRPlatform current reducedConflictCounter ]