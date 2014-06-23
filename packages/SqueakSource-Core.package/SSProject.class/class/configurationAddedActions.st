accessing
configurationAddedActions
	"Blocks of the form [:aProject :aMCConfiguration :aCommiter  | ]"
	^ configurationAddedActions ifNil: [
		configurationAddedActions := OrderedCollection new]