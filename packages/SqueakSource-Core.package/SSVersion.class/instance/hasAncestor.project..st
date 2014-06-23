testing
hasAncestor: aVersion project: aProject
	^ (self readVersionInfoFromProject: aProject) hasAncestor: aVersion versionInfo