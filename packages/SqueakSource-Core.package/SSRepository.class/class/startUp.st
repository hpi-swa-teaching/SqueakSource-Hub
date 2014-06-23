system startup
startUp
	"DoIts""Smalltalk removeFromStartUpList: self. Smalltalk addToStartUpList: self"
	"startUp registry for SqueakSoure"
		
	(Pragma allNamed: #startUp in: self class) do: [:pragma |
		self perform: pragma selector].