testing
testAtMost
	| collection |
	collection := #(1 2 3) asOrderedCollection.
	sizeCondition := SSSizeCondition atMost: 4.
	self assert: (sizeCondition value: collection).
	collection add: 4.
	self assert: (sizeCondition value: collection).
	collection add: 5.
	self deny: (sizeCondition value: collection).
	collection add: 6.
	self deny: (sizeCondition value: collection)