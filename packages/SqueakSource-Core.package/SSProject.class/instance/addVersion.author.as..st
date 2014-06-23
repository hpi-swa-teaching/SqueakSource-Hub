accessing-versions
addVersion: aString author: aUser as: aMember

	| array version versionName |
	(self isMember: aMember allowedTo: SSAccessPolicy write)
		ifFalse: [ 
			^ SSProjectAccessViolation
				project: self
				operation: 'add version'
				member: aMember
				right: SSAccessPolicy write ].
	array := aString asByteArray.
	version := SSVersion array: array author: aUser.
	versionName := version fileName.
	self class versionAddedActions do: [:actionBlock |
		actionBlock valueWithArguments: {self. version. versionName. aUser. aMember. array}].
	^ version