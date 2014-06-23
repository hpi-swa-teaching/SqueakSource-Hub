actions
editConfigs	
	<actionNamed: 'Edit configs' priority: 50 condition: #hasConfigs>
	<icon: 'random'>
	[
		| cfgName configuration message |
		cfgName := self call: (SSSimpleObjectChooser 
			model: (self model sortedConfigs collect: [ :each | each fileName])
			heading: 'Choose config	').

		cfgName ifNil: [^self].

		configuration := self model configs at: cfgName ifAbsent: [ ^self ].
		(self confirmDelete: configuration) ifTrue: [
			self model removeConfig: cfgName as: self user.
			self saveSession ] .
	] repeat