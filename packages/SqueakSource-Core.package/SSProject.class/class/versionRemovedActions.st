accessing
versionRemovedActions
	"Blocks of the form [:aProject :aSSVersion :aVersionName :anAuthor :aRemover  | ]"
	^ versionRemovedActions ifNil: [
		versionRemovedActions := OrderedCollection new].