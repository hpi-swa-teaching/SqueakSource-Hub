accessing-description
magritteDescription
	^super magritteDescription collect: [ :each |
		(#(login id) includes: (self magritteModelAccessIn: each))
			ifTrue: [each beReadonly]
			ifFalse: [each]]