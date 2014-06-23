actions-accessing
actionLinksIn: aClass on: stream

	"simple link actions"
	(Pragma allNamed: #linkNamed:priority:condition: in: aClass) 
		do: [:pragma |
			stream nextPut: (self
				actionWithPriority: (pragma argumentAt: 2) 
				description: (self actionDescriptionForPragma: pragma)
				target: (self perform: pragma selector))].