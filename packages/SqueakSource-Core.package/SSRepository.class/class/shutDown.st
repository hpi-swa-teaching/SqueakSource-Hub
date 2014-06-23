system startup
shutDown
	"DoIts""Smalltalk addToShutDownList: self"
	"shutDown registry for SqueakSoure"
		
	(Pragma allNamed: #shutDown in: self class) do: [:pragma |
		self perform: pragma selector].