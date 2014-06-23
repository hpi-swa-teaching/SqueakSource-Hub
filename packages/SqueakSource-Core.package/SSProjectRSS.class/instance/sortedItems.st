accessing
sortedItems
	^(SortedCollection sortBlock: [:a :b | a timestamp > b timestamp])
		addAll: model feeds;
		addAll: model versions;
		yourself