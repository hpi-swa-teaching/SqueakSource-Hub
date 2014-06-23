actions-accessing
actionsIn: aClass on: stream

	self actionPragmas pairsDo: [:pragmaName :condition |
		(Pragma allNamed: pragmaName in: aClass) 
			do: [:pragma | (condition valueWithPossibleArgument: pragma) ifTrue: [
				stream nextPut: (self
					actionWithPriority: (pragma argumentAt: 2) 
					description: (self actionDescriptionForPragma: pragma)
					target: pragma selector)]]]