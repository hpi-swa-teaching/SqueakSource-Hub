tab components
priorizedTabsIn: aClass

	^ Array streamContents: [ :stream |
		(Pragma allNamed: #tabNamed:priority:condition: in: aClass) 
			do: [:pragma |
				(self perform: (pragma argumentAt: 3)) ifTrue: [
					stream 	nextPut: (pragma argumentAt: 2) ->  
						{ pragma argumentAt: 1. self perform: pragma selector}]]]