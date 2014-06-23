testing
testAtLeast
	| collection |
	collection := #(1 2 3) asOrderedCollection.
	sizeCondition := SSSizeCondition atLeast: 4.
	self deny: (sizeCondition value: collection).
	collection add: 4.
	self assert: (sizeCondition value: collection).
	collection add: 5.
	self assert: (sizeCondition value: collection)