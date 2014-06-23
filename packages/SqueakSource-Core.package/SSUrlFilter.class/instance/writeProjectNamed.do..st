private
writeProjectNamed: aString do: aTwoArgumentBlock
	self projectNamed: aString do: [ :project |
		| author |
		(self isAllowed: SSAccessPolicy write in: project)
			ifFalse: [ self authResponseFor: project ].
		author := self user.
		self storage log: 'PUT ', self requestContext request url greaseString, ' (', author login, ')'.
		aTwoArgumentBlock value: project value: author ]