private
filter: someVersions

	self searchText isEmptyOrNil ifTrue: [^ someVersions].

	^(self searchText includes: $*)
		ifTrue: [
			someVersions select: [ :each |
				each stringsSatisfy: [ :str |
					str notNil and: [ self searchText match: str ] ] ] ]
		ifFalse: [
			someVersions select: [ :each |
				each stringsSatisfy: [ :str |
					str notNil and: [ 	str 
							includesSubstring: self searchText
							caseSensitive: false ] ] ] ].
