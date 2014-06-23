testing
isUniqueProjectId: aString
	self flag: #NeedsReview. "were do these come from?"
	^((#('files' 'home' 'projects'  'tags' 'members' 'groups' 'help' 'search') includes: aString) not)
		and: [ self projects  allSatisfy: [ :each | each id ~= aString ] ]