request-handling
changesOfProject: projectName view: expand
	<get>
	<path: '/{projectName}/changes/?view={expand}'>
	self projectNamed: projectName do: [ :project |
		(self isAllowed: SSAccessPolicy read in: project) 
			ifFalse: [self authResponseFor: project]
			ifTrue: [
				(SSChangesListing project: project)
					expand: (expand = 'expand');
					respondRendered ]]