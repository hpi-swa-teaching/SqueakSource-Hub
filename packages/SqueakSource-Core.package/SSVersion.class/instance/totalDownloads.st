accessing-statistics
totalDownloads

	^ self downloadStatistics inject: 0 into: [:sum :each | sum + each value].
