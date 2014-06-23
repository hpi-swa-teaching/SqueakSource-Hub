statistics
mostCommitsByMembers
	| authorDict  result |
	authorDict := Dictionary new.
	self versionsDo: [:each | | member commits |
			member := each author.
			commits := authorDict at: member ifAbsentPut: [OrderedCollection new].
			commits add: each ].
	result := OrderedCollection new.
	authorDict keys asSortedCollection do: [:each | 
		 result add: each -> (authorDict at: each) size].
	^(result asSortedCollection: [:a :b | a value > b value]) asOrderedCollection copyFrom: 1 to: (result size min: 10)
