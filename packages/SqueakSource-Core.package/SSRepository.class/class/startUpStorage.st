system startup
startUpStorage
	<startUp>
	
	"allow the storage to re-initialize"
	self storage ifNotNil: [:storage | storage startUpStorage].
