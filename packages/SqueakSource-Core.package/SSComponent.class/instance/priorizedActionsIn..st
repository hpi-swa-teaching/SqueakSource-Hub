actions-accessing
priorizedActionsIn: aClass	
	
	aClass ifNil: [^ #()].
	
	^ Array streamContents: [ :stream | 

		"look for actions in superclasses"
		(aClass name asString = 'SSComponent')
			ifFalse: [stream nextPutAll: (self priorizedActionsIn: aClass superclass)].

		self actionLinksIn: aClass on: stream.
		self actionsIn: aClass on: stream.]
		

		
