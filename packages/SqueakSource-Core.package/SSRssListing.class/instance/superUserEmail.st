accessing
superUserEmail
	^String streamContents: [ :stream |
		self repository superUserEmail 
			do: [ :each | stream nextPutAll: each greaseString ]
			separatedBy: [ stream nextPutAll: '; ' ] ]