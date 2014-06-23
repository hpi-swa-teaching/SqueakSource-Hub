accessing-defaults
defaultInstances
	^self defaultNames collect: [ :each |
		self name: each ]