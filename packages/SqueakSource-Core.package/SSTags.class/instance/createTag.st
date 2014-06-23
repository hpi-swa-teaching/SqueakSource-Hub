actions
createTag

	<actionNamed: 'Create Tag' priority: 60 condition: #canCreateTag>
	<icon: 'tag'>
	
	| name newTags |
	name := ''.
	[ name isEmptyOrNil ] whileTrue: [
		name := self request: 'Name of the tag(s), use "," as separator: ' ].
	newTags :=  name findTokens: ','.
	newTags do: [:tag | 
		(self repository hasTagNamed: tag)
			ifFalse: [ 
				self repository createTagNamed: tag ] ].
	self session save.
	self resetModel.