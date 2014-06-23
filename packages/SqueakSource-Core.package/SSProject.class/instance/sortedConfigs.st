accessing-configs
sortedConfigs
	^self configs asSortedCollection: [:a :b | a name < b name].