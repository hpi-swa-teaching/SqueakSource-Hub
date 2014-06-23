system startup
shutDownStorage
	<shutDown>
	
	"allow the storage to settle"
	self storage ifNotNil: [:storage | storage shutDownStorage].
