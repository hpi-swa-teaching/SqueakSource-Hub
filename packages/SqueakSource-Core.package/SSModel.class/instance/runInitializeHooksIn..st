initialization
runInitializeHooksIn: aClass

	aClass ifNil: [^ #()].

	aClass name asString = 'SSModel'
		ifFalse: [self runInitializeHooksIn: aClass superclass].

	(Pragma allNamed: #initialization in: aClass) do: [:pragma| 
		self perform: pragma selector].
