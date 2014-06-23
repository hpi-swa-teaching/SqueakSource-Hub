accessing
configurationRemovedActions
	"Blocks of the form [:aProject :aConfigName :aRemover  | ]"
	^ configurationRemovedActions ifNil: [
		configurationRemovedActions := OrderedCollection new]