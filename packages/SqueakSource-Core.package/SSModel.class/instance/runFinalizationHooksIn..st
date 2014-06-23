initialization
runFinalizationHooksIn: aClass

	aClass ifNil: [^ #()].

	(Pragma allNamed: #finalization in: aClass) do: [:pragma| 
		self perform: pragma selector].

	aClass name asString = 'SSModel'
		ifFalse: [self runFinalizationHooksIn: aClass superclass].
