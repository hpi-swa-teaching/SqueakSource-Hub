accessing-descriptions
magritteDescription 
	| desc |
	desc := super magritteDescription.
	
	desc := self repository projectsCanHaveParent
		ifTrue: [desc]
		ifFalse: [desc reject: [ :each |
			#(parentProject defaultMoveTarget) includes: (self magritteModelAccessIn: each)]].
	
	desc := self repository blessingsEnabled
		ifTrue: [desc]
		ifFalse: [desc reject: [ :each |
			#(canBless) includes: (self magritteModelAccessIn: each)]].
	
	^ desc