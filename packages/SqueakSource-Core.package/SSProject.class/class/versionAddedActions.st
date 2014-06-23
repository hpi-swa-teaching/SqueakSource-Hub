accessing
versionAddedActions
	"Blocks of the form [:aProject :aSSVersion :aVersionName :anAuthor :aCommiter  :aByteArray | ]"
	^ versionAddedActions ifNil: [
		versionAddedActions := OrderedCollection new]