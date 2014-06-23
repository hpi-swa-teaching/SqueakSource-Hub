instance creation
model: aModel

	| component |
	component := self new
		setModel: aModel;
		yourself.
	
	(Pragma allNamed: #decoration in: self class) do: [:pragma |
		component := self perform: pragma selector with: component].
	
	^ component