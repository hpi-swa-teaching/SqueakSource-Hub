request-handling
blessed: projectName
	<get>
	<path: '/{projectName}/blessed'>
	self projectNamed: projectName do: [ :project | 
		(self isAllowed: SSAccessPolicy read in: project) 
			ifFalse: [self authResponseFor: project]
			ifTrue: [
				(SSBlessedVersionListing project: project) respondRendered ]]