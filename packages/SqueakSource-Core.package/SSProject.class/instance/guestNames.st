accessing-policy
guestNames
	^String streamContents: [ :stream |
		self guests 
			do: [ :each | stream nextPutAll: each login ]
			separatedBy: [ stream nextPutAll: ', ' ] ]