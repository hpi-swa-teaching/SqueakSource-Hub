accessing
actions
	^Array streamContents: [ :stream |
		(self project isMember: self session user allowedTo: SSAccessPolicy write) ifTrue: [ 
			stream nextPut: #( 'View' #view: $v).
			stream nextPut: #( 'Edit' #edit: $e) ].
		stream nextPut: #( 'Home' #home $h) ].