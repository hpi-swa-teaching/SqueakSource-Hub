accessing
information
	^self isOneProject
		ifTrue: [ self project information ]
		ifFalse: [ self title , ' all projects RSS feed' ]