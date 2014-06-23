class initialization
runInitializeHooksIn: aClass

	aClass ifNil: [^ #()].

	aClass name asString = 'SSModel class'
		ifFalse: [self runInitializeHooksIn: aClass superclass].

	(Pragma allNamed: #initialization in: aClass) do: [:pragma| 
		" using the selector and _not_ the CM results in
		the method defined on _self_ to be sent, even if the
		method with the pragma is in superlcass. "
		self perform: pragma selector].
